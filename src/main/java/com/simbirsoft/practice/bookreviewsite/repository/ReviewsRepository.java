package com.simbirsoft.practice.bookreviewsite.repository;

import com.simbirsoft.practice.bookreviewsite.entity.Review;
import com.simbirsoft.practice.bookreviewsite.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ReviewsRepository extends JpaRepository<Review, Long> {

    int countReviewsByAuthorId(Long id);

    Page<Review> getAllByBookId(Long id, Pageable pageable);

    int countByBookId(Long id);

    List<Review> getAllByAuthorId(Long id);
    @Query("select rev from Review rev")
    Page<Review> search(Pageable pageable);
    long countByAuthor(Long id);

}
