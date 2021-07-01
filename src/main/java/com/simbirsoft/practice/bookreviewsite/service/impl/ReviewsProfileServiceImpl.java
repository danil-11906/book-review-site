package com.simbirsoft.practice.bookreviewsite.service.impl;

import com.simbirsoft.practice.bookreviewsite.entity.Review;
import com.simbirsoft.practice.bookreviewsite.repository.ReviewsRepository;
import com.simbirsoft.practice.bookreviewsite.service.ReviewsProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ReviewsProfileServiceImpl implements ReviewsProfileService {

    @Autowired
    private ReviewsRepository reviewsRepository;

    @Override
    public List<Review> getAllRev(Long id) {
        return reviewsRepository.getAllByAuthorId(id);
    }

    @Override
    public List<Review> search(Integer size, Integer page, String sortParameter, String directionParameter) {
        Sort.Direction direction = Sort.Direction.ASC;
        Sort sort = Sort.by(direction, "createdAt");

        if (directionParameter != null) {
            direction = Sort.Direction.fromString(directionParameter);
        }

        if (sortParameter != null) {
            sort = Sort.by(direction, sortParameter);
        }

        PageRequest pageRequest = PageRequest.of(page, size, sort);
        Page<Review> papersPage = reviewsRepository.search(pageRequest);
        return Review.from(papersPage.getContent());
    }

    @Override
    public Long countReview() {
        return reviewsRepository.count();
    }
}