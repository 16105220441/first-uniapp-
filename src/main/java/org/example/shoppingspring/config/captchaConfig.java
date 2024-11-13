package org.example.shoppingspring.config;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.LineCaptcha;
import cn.hutool.captcha.generator.RandomGenerator;


public class captchaConfig {

    private  static final int count = 4;
    public LineCaptcha getLineCaptcha(){
        return CaptchaUtil.createLineCaptcha(75,35,count,50);

    }

    public String getMessageCode(){
        RandomGenerator randomGenerator = new RandomGenerator("0123456789", 6);
        LineCaptcha lineCaptcha = CaptchaUtil.createLineCaptcha(100,50);
        lineCaptcha.setGenerator(randomGenerator);
        lineCaptcha.createCode();
        return lineCaptcha.getCode();
    }
}
