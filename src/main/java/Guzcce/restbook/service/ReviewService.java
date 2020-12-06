package Guzcce.restbook.service;

import Guzcce.restbook.model.Restaurant;
import Guzcce.restbook.model.Review;
import Guzcce.restbook.repository.RestaurantRepository;
import Guzcce.restbook.repository.ReviewRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ReviewService {
    private final ReviewRepository reviewRepository;

    public ReviewService(ReviewRepository reviewRepository) {
        this.reviewRepository = reviewRepository;
    }

    public List<Review> findAllByRestaurantAndOrderByReviewDate(){
        return reviewRepository.findAllByRestaurantAndOrderByReviewDate();
    }

    public List<Review> findAllByUserAndOrderByReviewDate(){
        return reviewRepository.findAllByUserAndOrderByReviewDate();
    }

    public Optional<Review> getReview(Long id){
        return reviewRepository.findById(id);
    }

    public Review saveRestaurant(Review review) {
        return reviewRepository.save(review);
    }
}