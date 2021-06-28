package com.simbirsoft.practice.bookreviewsite.repository;

import com.simbirsoft.practice.bookreviewsite.entity.Review;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReviewsRepository extends JpaRepository<Review, Long> {

    int countReviewsByAuthorId(Long id);

    Page<Review> getAllByBookId(Long id, Pageable pageable);

    int countByBookId(Long id);

}
