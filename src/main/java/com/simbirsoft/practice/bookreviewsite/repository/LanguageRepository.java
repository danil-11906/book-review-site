package com.simbirsoft.practice.bookreviewsite.repository;

import com.simbirsoft.practice.bookreviewsite.entity.Language;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Anvar Khasanov
 * student of ITIS KFU
 * group 11-905
 */
public interface LanguageRepository extends JpaRepository<Language, Long> {
}
