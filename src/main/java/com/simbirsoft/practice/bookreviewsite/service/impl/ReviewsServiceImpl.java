package com.simbirsoft.practice.bookreviewsite.service.impl;

import com.simbirsoft.practice.bookreviewsite.dto.BookDTO;
import com.simbirsoft.practice.bookreviewsite.dto.ReviewAdditionDTO;
import com.simbirsoft.practice.bookreviewsite.dto.ReviewDTO;
import com.simbirsoft.practice.bookreviewsite.dto.UserDTO;
import com.simbirsoft.practice.bookreviewsite.entity.Book;
import com.simbirsoft.practice.bookreviewsite.entity.Review;
import com.simbirsoft.practice.bookreviewsite.entity.User;
import com.simbirsoft.practice.bookreviewsite.exception.ResourceNotFoundException;
import com.simbirsoft.practice.bookreviewsite.repository.BookRepository;
import com.simbirsoft.practice.bookreviewsite.repository.ReviewsRepository;
import com.simbirsoft.practice.bookreviewsite.repository.UsersRepository;
import com.simbirsoft.practice.bookreviewsite.service.BookService;
import com.simbirsoft.practice.bookreviewsite.service.ReviewsService;
import org.modelmapper.ModelMapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class ReviewsServiceImpl implements ReviewsService {

    private final ReviewsRepository reviewsRepository;
    private final BookRepository bookRepository;
    private final UsersRepository usersRepository;
    private final ModelMapper modelMapper;

    public ReviewsServiceImpl(ReviewsRepository reviewsRepository, ModelMapper modelMapper,
                              BookRepository bookRepository, UsersRepository usersRepository) {
        this.reviewsRepository = reviewsRepository;
        this.modelMapper = modelMapper;
        this.bookRepository = bookRepository;
        this.usersRepository = usersRepository;
    }

    @Override
    public int getReviewsCountUserWrote(Long userId) {
        return reviewsRepository.countReviewsByAuthorId(userId);
    }

    @Override
    public Page<ReviewDTO> getAllByBookId(Long bookId, Pageable pageable) {
        return reviewsRepository.getAllByBookId(bookId, pageable)
                .map(review -> modelMapper.map(review, ReviewDTO.class));
    }

    @Override
    public LocalDateTime addReview(ReviewAdditionDTO reviewAdditionDTO, UserDTO author, Long bookId) {

        Book book = bookRepository.findById(bookId).orElseThrow(() ->
                new ResourceNotFoundException("Book not found"));
        User user = usersRepository.getById(author.getId());

        Review review = Review.builder()
                .book(book)
                .author(user)
                .mark(Integer.parseInt(reviewAdditionDTO.getMark()))
                .text(reviewAdditionDTO.getText())
                .createdAt(LocalDateTime.now())
                .rate(0)
                    .build();
        reviewsRepository.save(review);

        System.out.println("bookId: " + review.getBook().getId());

        return review.getCreatedAt();

    }

}
