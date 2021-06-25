package com.simbirsoft.practice.bookreviewsite.service;

import com.simbirsoft.practice.bookreviewsite.dto.BookDTO;
import com.simbirsoft.practice.bookreviewsite.enums.BookStatus;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * @author Roman Leontev
 * 03:31 23.06.2021
 * group 11-905
 */

public interface BookService {
    Page<BookDTO> findAllByBookStatus(Pageable pageable, BookStatus bookStatus);

    Page<BookDTO> findAllByBookStatusAndTitle(Pageable pageable, BookStatus bookStatus, String title);
}
