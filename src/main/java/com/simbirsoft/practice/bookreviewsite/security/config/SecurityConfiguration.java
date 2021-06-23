package com.simbirsoft.practice.bookreviewsite.security.config;

import com.simbirsoft.practice.bookreviewsite.security.filters.UserConfirmedFilter;
import com.simbirsoft.practice.bookreviewsite.security.oauth.CustomOAuth2User;
import com.simbirsoft.practice.bookreviewsite.security.oauth.CustomOAuth2UserService;
import com.simbirsoft.practice.bookreviewsite.service.SignUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    @Qualifier("customUserDetailService")
    private UserDetailsService userDetailsService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private UserConfirmedFilter userConfirmedFilter;

    @Autowired
    private CustomOAuth2UserService oauthUserService;

    @Autowired
    private SignUpService signUpService;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/", "/css/**", "/js/**", "/images/**", "/sign_up/**",
                        "/login/**").permitAll()
                .antMatchers("/profile/**").authenticated()
                    .and()
                .oauth2Login().loginPage("/login").userInfoEndpoint().userService(oauthUserService)
                .and()
                .successHandler(this::onAuthenticationSuccess)
                .and()
                .formLogin()
                .loginPage("/login")
                .failureUrl("/login?error")
                .usernameParameter("email")
                .defaultSuccessUrl("/home")
                    .and()
                .logout()
                .logoutUrl("/logout")
                .logoutSuccessUrl("/login")
                    .and()
                .addFilterAfter(userConfirmedFilter, UsernamePasswordAuthenticationFilter.class)
                .csrf().disable();

    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder);
    }

    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException {
        CustomOAuth2User oAuth2User = new CustomOAuth2User((OAuth2User) authentication.getPrincipal()); //TODO cast
        signUpService.signUpWithOAuth(oAuth2User.getEmail(), oAuth2User.getName());
        httpServletResponse.sendRedirect("/home");
    }
}
