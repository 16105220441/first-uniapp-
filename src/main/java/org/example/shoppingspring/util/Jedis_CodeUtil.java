package org.example.shoppingspring.util;

import cn.hutool.core.map.MapUtil;
import cn.hutool.db.nosql.redis.RedisDS;
import cn.hutool.json.JSONUtil;
import redis.clients.jedis.Jedis;

import java.util.HashMap;

public class Jedis_CodeUtil {
    Jedis jedis = RedisDS.create().getJedis();
    public void set(String uid,String code){
        jedis.select(0);
        jedis.set(uid, JSONUtil.toJsonStr( MapUtil.builder(new HashMap<String, String>())
                .put("imageCode", code).build()));
    }

    public String getImageCode(String uid){
        jedis.select(0);
         return JSONUtil.parseObj(jedis.get(uid)).getStr("imageCode");
    }

    public void deleteImageCode(String uid){
        jedis.select(0);
        jedis.del(uid);

    }

    public void setMessageCode(String uid,String messageCode){
        jedis.select(1);

        jedis.set(uid, JSONUtil.toJsonStr( MapUtil.builder(new HashMap<String, String>())
                .put("messageCode", messageCode).build()));
        jedis.pexpire(uid,1000*60*5);
    }

    public String getMessageCode(String uid){
        jedis.select(1);
        return JSONUtil.parseObj(jedis.get(uid)).getStr("messageCode");
    }

    public void deleteMessageCode(String uid){
        jedis.select(1);
        jedis.del(uid);
    }
}
