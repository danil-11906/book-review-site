package com.simbirsoft.practice.bookreviewsite.dto;

import com.simbirsoft.practice.bookreviewsite.entity.Category;
import com.simbirsoft.practice.bookreviewsite.entity.Language;
import com.simbirsoft.practice.bookreviewsite.entity.User;
import com.simbirsoft.practice.bookreviewsite.enums.BookStatus;
import com.simbirsoft.practice.bookreviewsite.validation.annotation.ValidCountry;
import com.simbirsoft.practice.bookreviewsite.validation.annotation.ValidDate;
import com.simbirsoft.practice.bookreviewsite.validation.annotation.ValidLanguage;
import lombok.Data;
import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Calendar;
import java.util.Date;
import java.util.Set;

/**
 * @author Anvar Khasanov
 * student of ITIS KFU
 * group 11-905
 */

@Data
public class AddBookForm {
    @NotBlank
    @Length(max = 100)
    private String title;

    @NotNull
    @ValidCountry(message = "Country is not found")
    private Integer countryId;

    @NotNull
    @ValidLanguage(message = "Language is not found")
    private Integer languageId;

    @NotBlank
    @Length(max = 100)
    private String author;

    @NotBlank
    @Length(max = 1000)
    private String description;

    @NotNull
    @ValidDate(message = "Year is not valid")
    private Integer releaseYear;

    private Set<Category> categories;
}
