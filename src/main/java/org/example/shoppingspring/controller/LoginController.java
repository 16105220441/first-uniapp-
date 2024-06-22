package org.example.shoppingspring.controller;

import cn.hutool.captcha.LineCaptcha;
import cn.hutool.core.util.IdUtil;

import org.example.shoppingspring.config.captchaConfig;
import org.example.shoppingspring.domain.Customers;
import org.example.shoppingspring.domain.ShoppingCart;
import org.example.shoppingspring.exception.LoginFailException;
import org.example.shoppingspring.exception.ValidateCodeException;
import org.example.shoppingspring.service.LoginService;
import org.example.shoppingspring.service.ShoppingCart_Service;
import org.example.shoppingspring.util.ImageCaptchaUtil;
import org.example.shoppingspring.util.Jedis_CodeUtil;
import org.example.shoppingspring.util.JwtUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@RestController
public class LoginController {
    final
    LoginService loginService;

    @Autowired
    ShoppingCart_Service shoppingCart_service;

    public LoginController(LoginService loginService) {
        this.loginService = loginService;
    }

    /*生成图形验证码*/
    @GetMapping("/ImageCaptcha")
    public Map<String, Object> getCode() throws IOException{
        String uuid = IdUtil.simpleUUID();
        LineCaptcha lineCaptcha = new captchaConfig().getLineCaptcha();

        new Jedis_CodeUtil().set(uuid,lineCaptcha.getCode());

        Map<String,Object> map = new HashMap<>();

        map.put("uuid",uuid);
        map.put("baseImageCode",new ImageCaptchaUtil().getCaptcha(lineCaptcha));
        return map;

    }
    /*校验图形验证码*/
    @PostMapping("/verify/imageCode")
    public void verifyImageCode(String uid,String imageCode) throws ValidateCodeException {

        String code = new Jedis_CodeUtil().getImageCode(uid);


        if(code == null){
            throw new ValidateCodeException("图形验证码失效");
        }
        else{
            if(code.equalsIgnoreCase(imageCode)){

            }
            else{
                throw new ValidateCodeException("图形验证码错误");
            }
        }
        new Jedis_CodeUtil().deleteImageCode(uid);
    }

    @GetMapping("/messageCode")
    public Map<String,Object> getMessageCode() {
        String uuid = IdUtil.simpleUUID();
        String messageCode = new captchaConfig().getMessageCode();
        new Jedis_CodeUtil().setMessageCode(uuid, messageCode);
        Map<String,Object> map = new HashMap<>();
        map.put("msgCodeId",uuid);
        map.put("msgCode",messageCode);
        return map;

    }

    @PostMapping("/verify/messageCode")
    public void verifyMessageCode(String msgCodeId, String msgCode) throws ValidateCodeException{
        String code = new Jedis_CodeUtil().getMessageCode(msgCodeId);
        if(code == null){
            throw new ValidateCodeException("短信验证码失效");
        }
        else{
            if(code.equalsIgnoreCase(msgCode)){
                new Jedis_CodeUtil().deleteMessageCode(msgCodeId);
            }
            else{
                throw new ValidateCodeException("短信验证码错误");
            }
        }

    }

    /*登录*/
    @PostMapping("/logIn")
    public Map<String,Object> login(@RequestBody Customers customers) throws LoginFailException{
        /*customers.setPassword(SecureUtil.sha1(customers.getPassword()));*/
        System.out.println(customers);
        Customers loginCustomer = this.loginService.findByPhone(customers.getPhone());
        if(loginCustomer == null){
            register(customers.getPhone());
            loginCustomer = loginService.findByPhone(customers.getPhone());
        }
        ShoppingCart shoppingCart =
                shoppingCart_service.get_byCustomerId(loginCustomer.getCustomerId());
        if (shoppingCart == null) {
            shoppingCart_service.addCart((int) loginCustomer.getCustomerId());

        }
        Map<String,Object> tokenMap = new HashMap<>();
        tokenMap.put("customerId",loginCustomer.getCustomerId());
        String token = JwtUtils.getToken(tokenMap);
        Map<String,Object> map = new HashMap<>();
        map.put("token",token);
        map.put("customerId",loginCustomer.getCustomerId());
        map.put("phone",loginCustomer.getPhone());
        return map;

    }

    @PostMapping("/register")
    public void register(String phone){

           loginService.register(phone);


    }




}
