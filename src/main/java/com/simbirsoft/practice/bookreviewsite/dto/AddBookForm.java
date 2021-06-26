package com.simbirsoft.practice.bookreviewsite.dto;

import com.simbirsoft.practice.bookreviewsite.entity.Category;
import com.simbirsoft.practice.bookreviewsite.entity.Country;
import com.simbirsoft.practice.bookreviewsite.entity.Language;
import com.simbirsoft.practice.bookreviewsite.validation.annotation.ValidDate;
import lombok.Data;
import org.hibernate.validator.constraints.Length;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
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
    private Country country;

    @NotNull
    private Language language;

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

    private MultipartFile cover;
}
