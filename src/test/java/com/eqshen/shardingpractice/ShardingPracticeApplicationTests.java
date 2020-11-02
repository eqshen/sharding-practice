package com.eqshen.shardingpractice;

import com.eqshen.shardingpractice.entity.OrderInfo;
import com.eqshen.shardingpractice.entity.UserInfo;
import com.eqshen.shardingpractice.mapper.OrderMapper;
import com.eqshen.shardingpractice.service.OrderService;
import com.eqshen.shardingpractice.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.shardingsphere.api.hint.HintManager;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDateTime;
import java.util.List;

@SpringBootTest
@Slf4j
class ShardingPracticeApplicationTests {

    @Autowired
    private OrderService orderService;

    @Autowired
    private UserService userService;

    @Test
    void contextLoads() {
    }

    /**
     * 测试分片
     */
    @Test
    void testSave(){
        for (int i = 0; i < 5; i++) {
            OrderInfo orderInfo = new OrderInfo();
            orderInfo.setOrderStatus(1);
            orderInfo.setUserId(10001L + i);
            orderInfo.setOrderName("黄焖鸡米饭" + LocalDateTime.now().toString());
            final boolean save = this.orderService.save(orderInfo);
            log.info("============done:{}",save);
        }


    }

    /**
     * 测试强制路由
     */
    @Test
    void testHint(){

        for (int i = 0; i < 5 ; i++) {
            HintManager hintManager = HintManager.getInstance();
            hintManager.addDatabaseShardingValue("t_user",i%2);
            hintManager.addTableShardingValue("t_user",i%2);

            UserInfo userInfo = new UserInfo();
            userInfo.setAddress("上海市黄浦区延安东路618号");
            userInfo.setAge(18);
            userInfo.setName("张飞"+ i);
            userInfo.setMobile("1762134523"+i);

            final boolean save = this.userService.save(userInfo);
            log.info("============done:{}",save);
            hintManager.close();
        }
    }

    @Test
    void clearDataBase(){
        List<UserInfo> userList = this.userService.list();
        userList.forEach(item ->{
            log.info("user:{}",item);
            this.userService.removeById(item.getId());
        });

        List<OrderInfo> orderInfoList = this.orderService.list();
        orderInfoList.forEach(order->{
            log.info("order:{}",order);
            this.orderService.removeById(order.getId());
        });
    }

}
