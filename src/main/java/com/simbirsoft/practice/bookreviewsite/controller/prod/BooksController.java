package com.simbirsoft.practice.bookreviewsite.controller.prod;

import com.simbirsoft.practice.bookreviewsite.dto.AddBookForm;
import com.simbirsoft.practice.bookreviewsite.dto.BookDTO;
import com.simbirsoft.practice.bookreviewsite.enums.BookStatus;
import com.simbirsoft.practice.bookreviewsite.security.details.CustomUserDetails;
import com.simbirsoft.practice.bookreviewsite.service.BookService;
import com.simbirsoft.practice.bookreviewsite.service.CountryService;
import com.simbirsoft.practice.bookreviewsite.service.LanguageService;
import com.simbirsoft.practice.bookreviewsite.service.ReviewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * @author Roman Leontev
 * 03:04 23.06.2021
 * group 11-905
 */

@Controller
@RequestMapping("/book")
public class BooksController {

    private final BookService bookService;

    private final LanguageService languageService;

    private final CountryService countryService;

    private final ReviewsService reviewsService;

    @Autowired
    public BooksController(BookService bookService, LanguageService languageService,
                           CountryService countryService, ReviewsService reviewsService) {
        this.bookService = bookService;
        this.languageService = languageService;
        this.countryService = countryService;
        this.reviewsService = reviewsService;
    }

    @GetMapping("/all")
    public String getAllBooksPage(@PageableDefault(size = 7, sort = { "id" }, direction = Sort.Direction.DESC) Pageable pageable, Model model) {
        Page<BookDTO> books = bookService.findAllByBookStatus(pageable, BookStatus.PUBLIC);

        model.addAttribute("title", "All Films");
        model.addAttribute("books", books);

        return "all_books";
    }

    @ResponseBody
    @GetMapping("/rest/all")
    public ResponseEntity<Page<BookDTO>> getAllBooks(String title,
            @PageableDefault(size = 7, sort = { "id" }, direction = Sort.Direction.DESC) Pageable pageable) {

        Page<BookDTO> books;
        if (title == null) {
            books = bookService.findAllByBookStatus(pageable, BookStatus.PUBLIC);
        } else {
            books = bookService.findAllByBookStatusAndTitle(pageable, BookStatus.PUBLIC, title);
        }

        if (books == null || books.getContent().size() == 0) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return ResponseEntity.ok(books);
    }

    @GetMapping("/add")
    public String getPage(AddBookForm addBookForm, Model model) {

        model.addAttribute("categories", bookService.getAllBookCategory());
        model.addAttribute("languages", languageService.getAllLanguages());
        model.addAttribute("countries", countryService.getAllCountries());
        model.addAttribute("addBookForm", addBookForm);

        return "add_book";
    }

    @PostMapping("/add")
    public String addBook(@Valid AddBookForm addBookForm, BindingResult bindingResult,
                          @AuthenticationPrincipal CustomUserDetails userDetails, Model model) {

        if (bindingResult.hasErrors()) {
            return getPage(addBookForm, model);
        }

        bookService.createNewBook(addBookForm, userDetails.getUser().getId());

        return "redirect:/book/my";
    }

    @GetMapping("{bookId}")
    public String getBookPage(@PathVariable("bookId") Long bookId,
                              @AuthenticationPrincipal CustomUserDetails userDetails,
                              Model model) {

        model.addAttribute("user", userDetails.getUser());

        BookDTO book = bookService.getById(bookId);
        model.addAttribute("book", book);

        return "singleBook";
    }
}
