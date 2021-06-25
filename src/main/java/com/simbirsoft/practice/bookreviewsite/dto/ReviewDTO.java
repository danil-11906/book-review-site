package com.simbirsoft.practice.bookreviewsite.dto;

import com.simbirsoft.practice.bookreviewsite.entity.Book;
import com.simbirsoft.practice.bookreviewsite.entity.User;
import lombok.Data;

@Data
public class ReviewDTO {

    private Long id;
    private String text;
    private Integer mark;
    private User author;
    private Book book;

}
