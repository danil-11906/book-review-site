package com.simbirsoft.practice.bookreviewsite.service.impl;

import com.simbirsoft.practice.bookreviewsite.repository.BooksRepository;
import com.simbirsoft.practice.bookreviewsite.service.api.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BooksServiceImpl implements BooksService {

    @Autowired
    private BooksRepository booksRepository;

    @Override
    public int getBooksCountUserPushed(Long userId) {
        return booksRepository.countBookByPushedById(userId);
    }

}
