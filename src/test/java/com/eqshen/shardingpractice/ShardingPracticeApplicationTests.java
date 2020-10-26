package com.eqshen.shardingpractice;

import com.eqshen.shardingpractice.entity.OrderInfo;
import com.eqshen.shardingpractice.mapper.OrderMapper;
import com.eqshen.shardingpractice.service.OrderService;
import lombok.extern.slf4j.Slf4j;
import org.apache.shardingsphere.api.hint.HintManager;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDateTime;

@SpringBootTest
@Slf4j
class ShardingPracticeApplicationTests {

    @Autowired
    private OrderService orderService;

    @Test
    void contextLoads() {
    }

    @Test
    void testSave(){
        for (int i = 0; i < 3; i++) {
            OrderInfo orderInfo = new OrderInfo();
            orderInfo.setOrderStatus(1);
            orderInfo.setUserId(10001L + i);
            orderInfo.setOrderName("黄焖鸡米饭" + LocalDateTime.now().toString());
            final boolean save = this.orderService.save(orderInfo);
            log.info("============done:{}",save);
        }


    }

    @Test
    void testHint(){
        HintManager hintManager = HintManager.getInstance();
        hintManager.addDatabaseShardingValue("t_order",0);
        hintManager.addTableShardingValue("t_order",1);
        for (int i = 0; i < 5 ; i++) {
            OrderInfo orderInfo = new OrderInfo();
            orderInfo.setOrderStatus(1);
            orderInfo.setUserId(10001L + i);
            orderInfo.setOrderName("黄焖鸡米饭" + LocalDateTime.now().toString());

            final boolean save = this.orderService.save(orderInfo);
            log.info("============done:{}",save);
        }
        hintManager.close();
    }

}
