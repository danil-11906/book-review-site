package com.simbirsoft.practice.bookreviewsite.validation.annotation;

import com.simbirsoft.practice.bookreviewsite.validation.validator.PasswordsMatchValidator;
import com.simbirsoft.practice.bookreviewsite.validation.validator.UniqueEmailValidator;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = UniqueEmailValidator.class)
public @interface UniqueEmail {

    String message();

    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};

}
