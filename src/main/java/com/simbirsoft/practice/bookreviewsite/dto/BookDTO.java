package com.simbirsoft.practice.bookreviewsite.dto;

import com.simbirsoft.practice.bookreviewsite.entity.Category;
import com.simbirsoft.practice.bookreviewsite.enums.BookStatus;
import com.simbirsoft.practice.bookreviewsite.enums.Country;
import com.simbirsoft.practice.bookreviewsite.enums.Language;
import lombok.*;

import java.util.Set;

/**
 * @author Roman Leontev
 * 10:35 23.06.2021
 * group 11-905
 */

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class BookDTO {
    private Long id;
    private String title;
    private Country country;
    private Language language;
    private String author;
    private String description;
    private String releaseYear;
    private String cover;
    private float rate;
    private BookStatus bookStatus;
    private UserDTO pushedBy;
    private Set<Category> categories;
}
