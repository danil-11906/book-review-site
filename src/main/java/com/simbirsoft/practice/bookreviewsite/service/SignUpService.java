package com.simbirsoft.practice.bookreviewsite.service;

import com.simbirsoft.practice.bookreviewsite.entity.User;
import com.simbirsoft.practice.bookreviewsite.enums.Role;
import com.simbirsoft.practice.bookreviewsite.exception.UserNotFoundException;
import com.simbirsoft.practice.bookreviewsite.dto.SignUpForm;

public interface SignUpService {

    void signUpWithRole(SignUpForm signUpForm, Role role);

    User signUpWithOAuth(String email, String name);

    void confirmUserByConfirmCode(String confirmCode) throws UserNotFoundException;

    boolean userWithSuchEmailExists(String email);
}
