package com.simbirsoft.practice.bookreviewsite.service;

import com.simbirsoft.practice.bookreviewsite.dto.BookDTO;
import com.simbirsoft.practice.bookreviewsite.dto.ReviewAdditionDTO;
import com.simbirsoft.practice.bookreviewsite.dto.ReviewDTO;
import com.simbirsoft.practice.bookreviewsite.dto.UserDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.time.LocalDateTime;

public interface ReviewsService {

    int getReviewsCountUserWrote(Long userId);

    Page<ReviewDTO> getAllByBook(BookDTO bookDTO, Pageable pageable);

    LocalDateTime addReview(ReviewAdditionDTO reviewAdditionDTO, UserDTO author, Long bookId);

}
