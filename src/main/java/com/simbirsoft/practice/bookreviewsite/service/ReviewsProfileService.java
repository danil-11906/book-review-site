package com.simbirsoft.practice.bookreviewsite.service;

import com.simbirsoft.practice.bookreviewsite.entity.Review;

import java.util.List;

public interface ReviewsProfileService {
    List<Review> getAllRev(Long id);
    Long countReview();
    List<Review> search(Integer size, Integer page, String sortParameter, String directionParameter);
    }
