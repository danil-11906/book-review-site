package com.simbirsoft.practice.bookreviewsite.service;

import com.simbirsoft.practice.bookreviewsite.dto.BookDTO;
import com.simbirsoft.practice.bookreviewsite.dto.ReviewDTO;

import java.util.List;

public interface ReviewsService {

    int getReviewsCountUserWrote(Long userId);

    List<ReviewDTO> getAllByBookId(Long id);

}
