package com.simbirsoft.practice.bookreviewsite.security.oauth;

import com.simbirsoft.practice.bookreviewsite.entity.User;
import com.simbirsoft.practice.bookreviewsite.enums.Role;
import com.simbirsoft.practice.bookreviewsite.enums.UserStatus;
import com.simbirsoft.practice.bookreviewsite.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * @author Anvar Khasanov
 * student of ITIS KFU
 * group 11-905
 */

@Service
public class CustomOAuth2UserService extends DefaultOAuth2UserService {

    @Autowired
    private UsersRepository usersRepository;

    @Override
    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
        OAuth2User oAuth2User = super.loadUser(userRequest);

        String email = oAuth2User.getAttribute("email");
        String name = oAuth2User.getAttribute("name");

        Optional<User> optionalUser = usersRepository.getByEmail(email);

        User user;

        if (!optionalUser.isPresent()) {

            user = User.builder()
                    .email(email)
                    .name(name)
                    .role(Role.USER)
                    .userStatus(UserStatus.CONFIRMED)
                    .build();

            user = usersRepository.save(user);
        } else {
            user = optionalUser.get();
        }

        return new CustomOAuth2User(oAuth2User, user);
    }
}
