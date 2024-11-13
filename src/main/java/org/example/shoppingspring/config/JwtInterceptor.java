package org.example.shoppingspring.config;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.example.shoppingspring.controller.LoginController;
import org.example.shoppingspring.exception.TokenException;
import org.example.shoppingspring.util.JwtUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import reactor.util.annotation.NonNull;
import reactor.util.annotation.NonNullApi;

public class JwtInterceptor implements HandlerInterceptor{
    private static final Logger log = LoggerFactory.getLogger(LoginController.class);
    @Override
    public boolean preHandle(HttpServletRequest request,
                            @NonNull HttpServletResponse response,
                             @NonNull Object handler) throws TokenException {

        if ("OPTIONS".equalsIgnoreCase(request.getMethod())) {
            response.setStatus(HttpServletResponse.SC_OK);
            return false;
        }

       String token = request.getHeader("token");
       try {
           JwtUtils.verify(token);
       }catch (Exception e){
           throw new TokenException("令牌失效");
       }

        return true;
    }
}
