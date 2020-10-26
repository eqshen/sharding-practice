package com.eqshen.shardingpractice.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eqshen.shardingpractice.entity.OrderInfo;
import com.eqshen.shardingpractice.mapper.OrderMapper;
import org.apache.ibatis.annotations.Param;

/**
 * @author eqshen
 * @description
 * @date 2020/10/26
 */
public interface OrderService extends  IService<OrderInfo>{

    OrderInfo findByOrderNo(String orderNo);

    int deleteByOrderNo(String orderNo);
}
