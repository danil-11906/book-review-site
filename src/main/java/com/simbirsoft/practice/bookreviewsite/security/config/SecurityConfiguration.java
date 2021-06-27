package com.simbirsoft.practice.bookreviewsite.security.config;

import com.simbirsoft.practice.bookreviewsite.security.filters.UserConfirmedFilter;
import com.simbirsoft.practice.bookreviewsite.security.oauth.CustomOAuth2UserService;
import com.simbirsoft.practice.bookreviewsite.service.SignUpService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    private final UserDetailsService userDetailsService;

    private final PasswordEncoder passwordEncoder;

    private final UserConfirmedFilter userConfirmedFilter;

    private final SignUpService signUpService;

    private final CustomOAuth2UserService customOAuth2UserService;

    public SecurityConfiguration(@Qualifier("customUserDetailService") UserDetailsService userDetailsService,
                                 PasswordEncoder passwordEncoder, UserConfirmedFilter userConfirmedFilter,
                                 SignUpService signUpService, CustomOAuth2UserService customOAuth2UserService) {

        this.userDetailsService = userDetailsService;
        this.passwordEncoder = passwordEncoder;
        this.userConfirmedFilter = userConfirmedFilter;
        this.signUpService = signUpService;
        this.customOAuth2UserService = customOAuth2UserService;
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/", "/css/**", "/js/**", "/images/**", "/sign_up/**",
                        "/login/**").permitAll()
                .antMatchers("/profile/**").authenticated()
                .antMatchers("/book/my").authenticated()
                .antMatchers("/book/delete/**").authenticated()
                .antMatchers("/book/add").authenticated()
                .and()
                .formLogin()
                .loginPage("/login")
                .failureUrl("/login?error")
                .usernameParameter("email")
                .defaultSuccessUrl("/")
                .and()
                .oauth2Login()
                    .loginPage("/login")
                    .userInfoEndpoint().userService(customOAuth2UserService)
                    .and()
                    .successHandler(this::onAuthenticationSuccess)
                .and()
                .logout()
                .logoutUrl("/logout")
                .logoutSuccessUrl("/login")
                    .and()
                .addFilterAfter(userConfirmedFilter, UsernamePasswordAuthenticationFilter.class)
                //.anonymous().disable()
                .csrf().disable();

    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder);
    }

    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException {
        OAuth2User oAuth2User = (OAuth2User) authentication.getPrincipal();

        String email = oAuth2User.getAttribute("email");
        String name = oAuth2User.getAttribute("name");

        signUpService.signUpWithOAuth(email, name);

        httpServletResponse.sendRedirect("/home");
    }
}
