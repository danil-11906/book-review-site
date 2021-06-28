package com.simbirsoft.practice.bookreviewsite.dto;

import com.simbirsoft.practice.bookreviewsite.entity.Book;
import com.simbirsoft.practice.bookreviewsite.entity.User;
import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ReviewDTO {

    private Long id;
    private String text;
    private Integer mark;
    private Integer rate;
    private User author;
    private Book book;
    private LocalDateTime createdAt;

}
