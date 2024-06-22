package org.example.shoppingspring.util;

import cn.hutool.core.convert.Convert;
import cn.hutool.core.date.DateTime;
import cn.hutool.core.date.DateUtil;
import cn.hutool.jwt.JWT;
import cn.hutool.jwt.JWTUtil;

import java.util.Map;

public  class JwtUtils {
    private static final byte[] SECRET = "1c2h3e4n5w6e7i8x9i0n".getBytes();

    public static String getToken(Map<String, Object> payload) {

        /*过期时间*/
        payload.put("expire_time",
                System.currentTimeMillis() + 1000 * 60 * 60* 24 * 3);
        return JWTUtil.createToken(payload, SECRET);

    }

    public static boolean verify(String token) {
        JWT jwt =  JWT.of(token);
        boolean verifyBool = jwt.verify();
        Long expireTimeInSeconds = Convert.toLong(jwt.getPayload().getClaim(
                "expire_time"));

        long nowDate = System.currentTimeMillis();
        System.out.println(nowDate < expireTimeInSeconds && verifyBool);
        return nowDate < expireTimeInSeconds && verifyBool;

    }

    public static int getUid(String token){

        return Convert.toInt(JWT.of(token).getPayload("userId")) ;
    }
}
