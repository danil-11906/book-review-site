package com.simbirsoft.practice.bookreviewsite.validation.validator;

import com.simbirsoft.practice.bookreviewsite.repository.CountryRepository;
import com.simbirsoft.practice.bookreviewsite.validation.annotation.ValidCountry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

/**
 * @author Anvar Khasanov
 * student of ITIS KFU
 * group 11-905
 */

@Component
public class CountryValidator implements ConstraintValidator<ValidCountry, Long> {

    private final CountryRepository countryRepository;

    public CountryValidator(CountryRepository countryRepository) {
        this.countryRepository = countryRepository;
    }

    @Override
    public boolean isValid(Long id, ConstraintValidatorContext context) {

        return countryRepository.existsById(id);
    }
}
