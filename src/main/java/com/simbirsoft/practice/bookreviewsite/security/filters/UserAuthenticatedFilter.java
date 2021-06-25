package com.simbirsoft.practice.bookreviewsite.security.filters;

import com.simbirsoft.practice.bookreviewsite.dto.UserDTO;
import com.simbirsoft.practice.bookreviewsite.security.details.UserDetailsImpl;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


//ДАННЫЙ КЛАСС НЕ УДАЛЯТЬ, НАД НИМ ИДЕТ РАБОТА-ПОЕБОТА

//public class UserAuthenticatedFilter extends OncePerRequestFilter {
//
//    private Authentication authentication;
//
//    @Override
//    protected void doFilterInternal(HttpServletRequest httpServletRequest,
//                                    HttpServletResponse httpServletResponse,
//                                    FilterChain filterChain) throws ServletException, IOException {
//
//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//        if (authentication != null) {
//            UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();
//            UserDTO user = userDetails.getUserDTO();
//            httpServletRequest.setAttribute("user", user);
//        }
//
//        filterChain.doFilter(httpServletRequest, httpServletResponse);
//
//    }
//
//    @Override
//    protected boolean shouldNotFilter(HttpServletRequest request) throws ServletException {
//        String uri = request.getRequestURI();
//        return uri.startsWith("/sign_up") || uri.startsWith("/login") ||
//                uri.startsWith("/login_or_sign_up");
//    }
//}
