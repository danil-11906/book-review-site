package com.simbirsoft.practice.bookreviewsite.dto;

import com.simbirsoft.practice.bookreviewsite.validation.annotation.PasswordsMatch;
import com.simbirsoft.practice.bookreviewsite.validation.annotation.UniqueEmail;
import com.simbirsoft.practice.bookreviewsite.validation.annotation.ValidPassword;
import lombok.Data;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Data
@PasswordsMatch(password = "password",
                verifyPassword = "verifyPassword",
                message = "Введенные пароли не совпадают")
public class SignUpForm {

    @NotBlank(message = "Данное поле не должно быть пустым")
    @Email(message = "Неверный формат адреса электронной почты")
    @UniqueEmail(message = "Пользователь с таким адресом электронной почты уже существует")
    private String email;

    @NotBlank(message = "Данное поле не должно быть пустым")
    @Size(max = 50, message = "Максимальное количество символов - 30")
    private String name;

    @NotBlank(message = "Данное поле не должно быть пустым")
    @ValidPassword(message = "Пароль должен содержать латиницу обоих регистров, хотя бы одну цифру и состоять минимум из 8 символов")
    private String password;

    @NotBlank(message = "Данное поле не должно быть пустым")
    private String verifyPassword;

}
