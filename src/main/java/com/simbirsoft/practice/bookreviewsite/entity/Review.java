package com.simbirsoft.practice.bookreviewsite.entity;

import lombok.*;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@EqualsAndHashCode(exclude = {"book", "author"})
@ToString(exclude = {"book", "author"})
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String text;
    private Integer mark;
    private Integer rate;

    @CreationTimestamp
    private LocalDateTime createdAt;

    @ManyToOne
    @JoinColumn(name = "author_id")
    private User author;

    @ManyToOne
    @JoinColumn(name = "book_id")
    private Book book;

    public static Review of(Review review) {
        return Review.builder()
                .id(review.getId())
                .text(review.getText())
                .createdAt(review.getCreatedAt())
                .mark(review.getMark())
                .rate(review.getRate())
                .author(review.getAuthor())
                .book(review.getBook())
                .build();
    }

    public static List<Review> from(List<Review> services) {
        return services.stream()
                .map(Review::of)
                .collect(Collectors.toList());
    }
}
