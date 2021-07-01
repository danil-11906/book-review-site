package com.simbirsoft.practice.bookreviewsite.controller.prod;

import com.simbirsoft.practice.bookreviewsite.entity.Review;
import com.simbirsoft.practice.bookreviewsite.security.details.CustomUserDetails;
import com.simbirsoft.practice.bookreviewsite.service.ReviewsProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ReviewController {

    private final Integer size = 2;

    @Autowired
    private ReviewsProfileService reviewsProfileService;

    @GetMapping("/profile/reviews")
    public Object getReviews (@AuthenticationPrincipal CustomUserDetails userDetails, Model model){
        model.addAttribute("reviews", reviewsProfileService.getAllRev(userDetails.getUser().getId()));
        return "reviewsOfUser";
    }

    @GetMapping("/papers/reviews/search")
    @ResponseBody
    public ResponseEntity<List<Review>> search(@RequestParam("page") Integer page,
                                               @RequestParam(value = "sort", required = false) String sort,
                                               @RequestParam(value = "direction", required = false) String direction) {
        return ResponseEntity.ok(reviewsProfileService.search(size, page, sort, direction));
    }


    @GetMapping("/list")
    public String getListPage(Model model) {
        long num = reviewsProfileService.countReview()/size;
        if (reviewsProfileService.countReview()%size > 0) {
            num++;
        }
        List<Integer> list = new ArrayList<Integer>();
        for (int i = 0; i < num; i++) {
            list.add(i+1);
        }
        model.addAttribute("reviews", list);
        return "reviewsOfUser";
    }
}
