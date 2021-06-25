package com.simbirsoft.practice.bookreviewsite.security.filters;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set;

public class UserConfirmedFilter extends OncePerRequestFilter {

    private Authentication authentication;

    @Override
    protected void doFilterInternal(HttpServletRequest httpServletRequest,
                                    HttpServletResponse httpServletResponse,
                                    FilterChain filterChain) throws ServletException, IOException {

        Set<String> authorities = AuthorityUtils.authorityListToSet(authentication.getAuthorities());

        if (!authorities.contains("CONFIRMED")) {
            httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/sign_up/pls_confirm_email");
        }

        filterChain.doFilter(httpServletRequest, httpServletResponse);

    }

    @Override
    protected boolean shouldNotFilter(HttpServletRequest request) throws ServletException {

        authentication = SecurityContextHolder.getContext().getAuthentication();

        boolean shouldFilter = request.getRequestURI().startsWith("/profile") &&
                authentication != null;

        return !shouldFilter;
    }
}
