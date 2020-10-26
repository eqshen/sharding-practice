package com.eqshen.shardingpractice.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.additional.query.impl.LambdaQueryChainWrapper;
import com.baomidou.mybatisplus.extension.service.additional.query.impl.QueryChainWrapper;
import com.baomidou.mybatisplus.extension.service.additional.update.impl.LambdaUpdateChainWrapper;
import com.baomidou.mybatisplus.extension.service.additional.update.impl.UpdateChainWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eqshen.shardingpractice.entity.OrderInfo;
import com.eqshen.shardingpractice.mapper.OrderMapper;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

/**
 * @author eqshen
 * @description
 * @date 2020/10/26
 */
@Service
public class OrderServiceImpl extends ServiceImpl<OrderMapper, OrderInfo> implements OrderService{


    @Override
    public OrderInfo findByOrderNo(String orderNo) {
        return this.baseMapper.findByOrderNo(orderNo);
    }

    @Override
    public int deleteByOrderNo(String orderNo) {
        return this.baseMapper.deleteByOrderNo(orderNo);
    }
}
