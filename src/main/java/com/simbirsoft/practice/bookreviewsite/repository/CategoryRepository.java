package com.simbirsoft.practice.bookreviewsite.repository;

import com.simbirsoft.practice.bookreviewsite.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Anvar Khasanov
 * student of ITIS KFU
 * group 11-905
 */
public interface CategoryRepository extends JpaRepository<Category, Long> {
}
