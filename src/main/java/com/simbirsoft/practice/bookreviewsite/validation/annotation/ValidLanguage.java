package com.simbirsoft.practice.bookreviewsite.validation.annotation;

import javax.validation.Payload;

/**
 * @author Anvar Khasanov
 * student of ITIS KFU
 * group 11-905
 */
public @interface ValidLanguage {
    String message();

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}