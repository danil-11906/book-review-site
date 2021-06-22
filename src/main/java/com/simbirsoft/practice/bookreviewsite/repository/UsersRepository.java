package com.simbirsoft.practice.bookreviewsite.repository;

import com.simbirsoft.practice.bookreviewsite.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UsersRepository extends JpaRepository<User, Long> {

    Optional<User> getUserByConfirmCode(String confirmCode);

    Optional<User> getByEmail(String email);

    boolean existsByEmail(String email);

}
