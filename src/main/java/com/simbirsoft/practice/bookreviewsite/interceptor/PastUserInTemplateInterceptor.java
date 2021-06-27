package com.simbirsoft.practice.bookreviewsite.interceptor;

import com.simbirsoft.practice.bookreviewsite.security.details.CustomUserDetails;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Anvar Khasanov
 * student of ITIS KFU
 * group 11-905
 */

@Component
public class PastUserInTemplateInterceptor implements HandlerInterceptor {

    @Override
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (modelAndView != null && authentication != null) {
            Object principal = authentication.getPrincipal();

            if (!principal.equals("anonymousUser")) {
                CustomUserDetails customUserDetails = (CustomUserDetails) authentication.getPrincipal();

                modelAndView.getModel().put("user", customUserDetails.getUser());
            }
        }
    }
}