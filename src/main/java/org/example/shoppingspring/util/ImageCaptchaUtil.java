package org.example.shoppingspring.util;

import cn.hutool.captcha.LineCaptcha;
import cn.hutool.core.img.ImgUtil;

import java.awt.image.BufferedImage;

public class ImageCaptchaUtil {

    public String getCaptcha(LineCaptcha lineCaptcha){


        BufferedImage image = lineCaptcha.getImage();

        return ImgUtil.toBase64(image,"jpg");
    }

}
