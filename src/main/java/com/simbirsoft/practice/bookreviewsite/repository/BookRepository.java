package com.simbirsoft.practice.bookreviewsite.repository;

import com.simbirsoft.practice.bookreviewsite.entity.Book;
import com.simbirsoft.practice.bookreviewsite.enums.BookStatus;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

/**
 * @author Roman Leontev
 * 03:33 23.06.2021
 * group 11-905
 */

public interface BookRepository extends JpaRepository<Book, Long> {
    Page<Book> findAllByBookStatus(Pageable pageable, BookStatus bookStatus);

    Page<Book> findAllByBookStatusAndTitleContainingIgnoreCase(Pageable pageable, BookStatus bookStatus, String title);

    int countBookByPushedById(Long id);

    Page<Book> findAllByPushedById(Pageable pageable, Long userId);

    Optional<Book> findFirstByBookStatusOrderById(BookStatus bookStatus);
}
