package com.simbirsoft.practice.bookreviewsite.entity;

import com.simbirsoft.practice.bookreviewsite.enums.BookStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Calendar;
import java.util.Date;
import java.util.Set;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
@Entity
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 100, nullable = false)
    private String title;

    @Column(length = 100, nullable = false)
    private String author;

    @Column(length = 1000, nullable = false)
    private String description;

    @Column(nullable = false)
    private Integer releaseYear;

    private String cover;

    @Column(scale = 1, precision = 2, nullable = false)
    private float rate;

    @Enumerated(EnumType.STRING)
    private BookStatus bookStatus;

    @ManyToOne
    @JoinTable(name = "country")
    private Country country;

    @ManyToOne
    @JoinTable(name = "language")
    private Language language;

    @ManyToOne
    @JoinColumn(name = "pushed_by")
    private User pushedBy;

    @ManyToMany
    @JoinTable(name = "book_category",
            joinColumns = @JoinColumn(name = "book_id"),
            inverseJoinColumns = @JoinColumn(name = "category_id"))
    private Set<Category> categories;

}
