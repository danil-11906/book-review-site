package com.simbirsoft.practice.bookreviewsite.controller.prod;

import com.simbirsoft.practice.bookreviewsite.dto.SignUpForm;
import com.simbirsoft.practice.bookreviewsite.enums.Role;
import com.simbirsoft.practice.bookreviewsite.exception.UserNotFoundException;
import com.simbirsoft.practice.bookreviewsite.service.SignUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@Profile("prod")
@RequestMapping("sign_up")
public class SignUpController {

    @Autowired
    private SignUpService signUpService;

    @GetMapping
    public String getSignUpPage(Model model) {
        model.addAttribute("signUpForm", new SignUpForm());
        return "signUp";
    }

    @PostMapping
    public String signUp(@Valid SignUpForm signUpForm,
                         BindingResult bindingResult,
                         Model model) {
        if (bindingResult.hasErrors()) {

            if (bindingResult.hasGlobalErrors()) {
                ObjectError passwordMismatchError = bindingResult.getGlobalError();
                model.addAttribute("passwordMismatch", passwordMismatchError.getDefaultMessage());
            }
            model.addAttribute("signUpForm", signUpForm);

            return "signUp";
        }
        else {
            signUpService.signUpWithRole(signUpForm, Role.USER);
            return "redirect:/sign_up/pls_confirm_email";
        }
    }

    @GetMapping("pls_confirm_email")
    public String getEmailConfirmationPage() {
        return "confirm_email";
    }

    @GetMapping("confirm_email/{confirm_code}")
    public String confirmEmail(@PathVariable("confirm_code") String confirmCode) throws UserNotFoundException {
        signUpService.confirmUserByConfirmCode(confirmCode);
        return "email_confirmed";
    }

}
