package org.example.shoppingspring;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.crypto.SecureUtil;


import cn.hutool.db.nosql.redis.RedisDS;
import net.sf.jsqlparser.statement.Statements;
import org.example.shoppingspring.util.Jedis_CodeUtil;
import org.example.shoppingspring.util.JwtUtils;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.convert.converter.Converter;
import redis.clients.jedis.Jedis;

import java.sql.*;
import java.util.*;

@SpringBootTest
class ShoppingSpringApplicationTests {

    @Test
    void contextLoads() {
    }

  /*  @Test

    public void getTokenTest(){
        Map<String,Object> map = new HashMap<>();
        map.put("userId",1);
        String s = JwtUtils.getToken(map);
        long startTime = System.currentTimeMillis();
        long currentTime = System.currentTimeMillis();
        System.out.println(s);
        while (currentTime - startTime < 1000*60 * 2) {
            // 在这里什么都不做，只是等待
            currentTime = System.currentTimeMillis();
        }


        System.out.println(JwtUtils.getUid(s));
    }

    @Test
    public void verifyTest(){

       JwtUtils.verify("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9" +
               ".eyJleHBpcmVfdGltZSI6MTcxODAxOTM2NjI4NSwidXNlcklkIjoxfQ.z4J05VzYMkYKWS3PusaQPmN4RME45TsgB-uM-QmPCfI1");
    }
    @Test
    public void getUidTest(){
        System.out.println( JwtUtils.getUid("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9" +
                ".eyJleHBpcmVfdGltZSI6MTcxODAxMzYxNjg4MCwidXNlcklkIjoxfQ.TJYfaXq58JmZdU2N8UOAbMuM5ZnDIIrcoDd_HJqvWoM"));

    }
    @Test
    public  void test() {
        long timestamp = 1718013215445L;
        String formattedDateTime = DateUtil.date(timestamp).toString();
        System.out.println(formattedDateTime);
    }
    @Test
    public void md5Test(){
        System.out.println(SecureUtil.sha1("1130"));
    }

    @Test
    public void getCaptcha(){
//        System.out.println(new ImageCaptchaUtil().getCaptcha());
    }

    @Test
    public void uuidTest(){
        String uuid = IdUtil.simpleUUID();
        System.out.println(uuid);
        System.out.println(uuid.getClass());
    }

    @Test
    public void jedisUtilTest(){
        String uuid = IdUtil.simpleUUID();
//        new JedisImageCodeUtil().set(uuid,new ImageCaptchaUtil().getCaptcha());

    }
    @Test
    public void redisGetTest(){
        Jedis jedis = RedisDS.create().getJedis();
        String code = jedis.get("dfeccd75acea43da97f324b310061933");
        System.out.println(code);
    }

    @Test
    public void ImgUtil_base64Encode(){

    }

    @Test
    public void getImageCode_redis(){
        System.out.println(new Jedis_CodeUtil().getImageCode(
                "2fe79e8368ac4ce9ad76b0e97386345d"));
    }*/
    @Test
    public void test(){
        List<String> names = Arrays.asList("peter", "anna", "mike", "xenia");

        Collections.sort(names, new Comparator<String>() {
            @Override
            public int compare(String a, String b) {
                return b.compareTo(a);
            }
        });
        for (String name : names) {
            System.out.println(name);
        }
    }

    @Test
    public void test1(){
        int num = 1;
        Converter<Integer, String> stringConverter =
                (from) -> String.valueOf(from + num);

        String  s = stringConverter.convert(2);
        System.out.println(s);
    }

    @Test
    public void jdbcTest() throws SQLException {
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost" +
                ":3306/shopping_datasource","root","113000");
        Statement statement = cn.createStatement();
        String sql = "select * from carousel";
        ResultSet resultSet = statement.executeQuery(sql);
        while (resultSet.next()){
            System.out.println(resultSet.getString("id")+ resultSet.getString("image_url"));
        }
    }

    @Test
    public void refTest(){

    }




}

class Mammal {
Mammal() {
System.out.println(4);
}
public void ears() {
System.out.println(2);
 }
}
class Dog extends Mammal {
 Dog() {
super.ears();
System.out.println(3);
 }
}
class Scottie extends Dog {

    public static void main(String[] args) {
        int a = 5 / 0;
    }
}



