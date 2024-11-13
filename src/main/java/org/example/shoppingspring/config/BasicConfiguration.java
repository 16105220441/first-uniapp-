package org.example.shoppingspring.config;

import org.springframework.context.annotation.Configuration;

import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
@Configuration

public class BasicConfiguration implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
       /* System.out.println("addInterceptors");*/
       registry.addInterceptor(new JwtInterceptor()).addPathPatterns(
               "/customer/**","/orderDetail/**","/address/**","/address" +
                       "/detail/**");
    }

    /**
     * @param registry
     */
    @Override
    public void addCorsMappings(CorsRegistry registry) {
       /* System.out.println("registry");*/
        registry.addMapping("/**")
                .allowedOrigins("*")
                .allowedMethods("GET","POST","PUT","DELETE","OPTIONS")
                .allowedHeaders("*");
    }
}
