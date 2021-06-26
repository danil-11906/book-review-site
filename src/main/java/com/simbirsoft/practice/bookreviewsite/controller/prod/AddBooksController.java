package com.simbirsoft.practice.bookreviewsite.controller.prod;

import com.simbirsoft.practice.bookreviewsite.dto.AddBookForm;
import com.simbirsoft.practice.bookreviewsite.repository.CountryRepository;
import com.simbirsoft.practice.bookreviewsite.security.details.CustomUserDetails;
import com.simbirsoft.practice.bookreviewsite.security.details.UserDetailsImpl;
import com.simbirsoft.practice.bookreviewsite.service.BookService;
import com.simbirsoft.practice.bookreviewsite.service.CountryService;
import com.simbirsoft.practice.bookreviewsite.service.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Anvar Khasanov
 * student of ITIS KFU
 * group 11-905
 */

@Controller
@RequestMapping("/book")
public class AddBooksController {

    @Autowired
    private BookService bookService;

    @Autowired
    private LanguageService languageService;

    @Autowired
    private CountryService countryService;

    @GetMapping("/add")
    public String getPage(Model model) {

        model.addAttribute("categories", bookService.getAllBookCategory());
        model.addAttribute("languages", languageService.getAllLanguages());
        model.addAttribute("countries", countryService.getAllCountries());

        return "add_book";
    }

    @PostMapping("/add")
    public String addBook(@AuthenticationPrincipal CustomUserDetails userDetails, AddBookForm addBookForm) {

        // TODO validation

        bookService.createNewBook(addBookForm, userDetails.getUser().getId());

        return "redirect:/book/my";
    }
}
