package com.simbirsoft.practice.bookreviewsite.service.impl;

import com.simbirsoft.practice.bookreviewsite.dto.ReviewDTO;
import com.simbirsoft.practice.bookreviewsite.entity.Review;
import com.simbirsoft.practice.bookreviewsite.repository.ReviewsRepository;
import com.simbirsoft.practice.bookreviewsite.service.ReviewsService;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ReviewsServiceImpl implements ReviewsService {

    private final ReviewsRepository reviewsRepository;
    private final ModelMapper modelMapper;

    public ReviewsServiceImpl(ReviewsRepository reviewsRepository, ModelMapper modelMapper) {
        this.reviewsRepository = reviewsRepository;
        this.modelMapper = modelMapper;
    }

    @Override
    public int getReviewsCountUserWrote(Long userId) {
        return reviewsRepository.countReviewsByAuthorId(userId);
    }

    @Override
    public List<ReviewDTO> getAllByBookId(Long id) {
        List<Review> reviews = reviewsRepository.getAllByBookId(id);
        return reviews.stream().map(review -> modelMapper.map(review, ReviewDTO.class))
                .collect(Collectors.toList());
    }

}
