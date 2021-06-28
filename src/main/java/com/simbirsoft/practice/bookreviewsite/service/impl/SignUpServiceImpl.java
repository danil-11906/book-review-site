package com.simbirsoft.practice.bookreviewsite.service.impl;

import com.simbirsoft.practice.bookreviewsite.dto.UserDTO;
import com.simbirsoft.practice.bookreviewsite.entity.User;
import com.simbirsoft.practice.bookreviewsite.enums.Role;
import com.simbirsoft.practice.bookreviewsite.enums.UserStatus;
import com.simbirsoft.practice.bookreviewsite.exception.UserNotFoundException;
import com.simbirsoft.practice.bookreviewsite.dto.SignUpForm;
import com.simbirsoft.practice.bookreviewsite.repository.UsersRepository;
import com.simbirsoft.practice.bookreviewsite.security.details.CustomUserDetails;
import com.simbirsoft.practice.bookreviewsite.util.ConfirmMailGenerator;
import org.modelmapper.ModelMapper;
import com.simbirsoft.practice.bookreviewsite.service.EmailSendingService;
import com.simbirsoft.practice.bookreviewsite.service.SignUpService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.UUID;

@Service
public class SignUpServiceImpl implements SignUpService {

    private final UsersRepository usersRepository;

    private final PasswordEncoder passwordEncoder;

    private final EmailSendingService emailSendingService;

    private final ConfirmMailGenerator confirmMailGenerator;

    private final UserDetailsService userDetailsService;

    private final ModelMapper modelMapper;

    @Value("${spring.profiles.active}")
    private String activeProfile;

    public SignUpServiceImpl(UsersRepository usersRepository,
                             PasswordEncoder passwordEncoder,
                             EmailSendingService emailSendingService,
                             ConfirmMailGenerator confirmMailGenerator,
                             @Qualifier("customUserDetailService") UserDetailsService userDetailsService,
                             ModelMapper modelMapper) {

        this.usersRepository = usersRepository;
        this.passwordEncoder = passwordEncoder;
        this.emailSendingService = emailSendingService;
        this.confirmMailGenerator = confirmMailGenerator;
        this.userDetailsService = userDetailsService;
        this.modelMapper = modelMapper;
    }

    @Override
    public void signUpWithRole(SignUpForm signUpForm, Role role) {

        User user = User.builder()
                .name(signUpForm.getName())
                .email(signUpForm.getEmail())
                .hashedPassword(passwordEncoder.encode(signUpForm.getPassword()))
                .role(role)
                .confirmCode(UUID.randomUUID().toString())
                .build();

        UserStatus userStatus;

        // TODO
        if (activeProfile.equals("dev")) {
            userStatus = UserStatus.CONFIRMED;
        } else userStatus = UserStatus.NOT_CONFIRMED;

        user.setUserStatus(userStatus);
        usersRepository.save(user);

        if (activeProfile.equals("prod")) {
            String letter = confirmMailGenerator.generateConfirmMail(
                    user.getConfirmCode(),
                    user.getName()
            );
            emailSendingService.sendEmail(user.getEmail(), letter,
                    "Подтверждение email");
        }
    }

    @Override
    public UserDTO signUpWithOAuth(String email, String name) {
        Optional<User> optionalUser = usersRepository.getByEmail(email);

        if (!optionalUser.isPresent()) {
            User user = User.builder()
                    .email(email)
                    .name(name)
                    .role(Role.USER)
                    .userStatus(UserStatus.CONFIRMED)
                    .build();

            user = usersRepository.save(user);

            return modelMapper.map(user, UserDTO.class);
        }

        return modelMapper.map(optionalUser.get(), UserDTO.class);

    }


    @Override
    public void confirmUserByConfirmCode(String confirmCode) throws UserNotFoundException {

        User user = usersRepository.getUserByConfirmCode(confirmCode)
                .orElseThrow(() -> new UserNotFoundException("User not found"));

        user.setUserStatus(UserStatus.CONFIRMED);
        usersRepository.save(user);

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && !(authentication.getPrincipal() instanceof String)) {
            CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
            userDetails.getUser().setUserStatus(UserStatus.CONFIRMED);
        }
    }

    @Override
    public boolean userWithSuchEmailExists(String email) {
        return usersRepository.existsByEmail(email);
    }
}
