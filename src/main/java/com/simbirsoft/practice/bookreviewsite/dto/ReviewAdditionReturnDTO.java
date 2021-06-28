package com.simbirsoft.practice.bookreviewsite.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewAdditionReturnDTO {

    private LocalDateTime createdAt;
    private float rate;

}
