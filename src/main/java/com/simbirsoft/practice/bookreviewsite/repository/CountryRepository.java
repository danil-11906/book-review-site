package com.simbirsoft.practice.bookreviewsite.repository;

import com.simbirsoft.practice.bookreviewsite.entity.Country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author Anvar Khasanov
 * student of ITIS KFU
 * group 11-905
 */
@Repository
public interface CountryRepository extends JpaRepository<Country, Long> {
}
