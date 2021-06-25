package com.simbirsoft.practice.bookreviewsite.config;

import org.modelmapper.ModelMapper;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.ModelMap;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Configuration
@EntityScan(basePackages = "com.simbirsoft.practice.bookreviewsite.entity")
@ComponentScan(basePackages = "com.simbirsoft.practice.bookreviewsite")
@EnableJpaRepositories(basePackages = "com.simbirsoft.practice.bookreviewsite.repository")
public class WebAppConfiguration {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public ExecutorService executorService() {
        return Executors.newCachedThreadPool();
    }

    @Bean
    public ModelMapper modelMapper() {
        return new ModelMapper();
    }
}
