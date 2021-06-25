package com.simbirsoft.practice.bookreviewsite.validation.validator;

import com.simbirsoft.practice.bookreviewsite.repository.LanguageRepository;
import com.simbirsoft.practice.bookreviewsite.validation.annotation.ValidLanguage;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

/**
 * @author Anvar Khasanov
 * student of ITIS KFU
 * group 11-905
 */
@Component
public class LanguageValidator implements ConstraintValidator<ValidLanguage, Long> {

    private final LanguageRepository languageRepository;

    public LanguageValidator(LanguageRepository languageRepository) {
        this.languageRepository = languageRepository;
    }

    @Override
    public boolean isValid(Long id, ConstraintValidatorContext context) {
        return languageRepository.existsById(id);
    }
}
