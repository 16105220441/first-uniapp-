package org.example.shoppingspring.config;


import org.example.shoppingspring.domain.Products;
import org.example.shoppingspring.exception.LoginFailException;
import org.example.shoppingspring.exception.ProductException;
import org.example.shoppingspring.exception.ValidateCodeException;
import org.example.shoppingspring.util.Result;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class CustomerExceptionHandler {

    @ExceptionHandler(LoginFailException.class)
    public Result<?> ErrorHandler(LoginFailException e) {
        return Result.error(403, "用户名密码错误");
    }
    @ExceptionHandler(ValidateCodeException.class)
    public Result ErrorHandler(ValidateCodeException e) {
        return Result.error(401, e.getMessage());
    }

    @ExceptionHandler(ProductException.class)
    public Result ErrorHandler(ProductException e){
        return Result.error(401,e.getMessage());
    }



}
