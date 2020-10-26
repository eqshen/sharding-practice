package com.eqshen.shardingpractice.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eqshen.shardingpractice.entity.OrderInfo;
import org.apache.ibatis.annotations.Param;

/**
 * @author eqshen
 * @description
 * @date 2020/10/26
 */
public interface OrderMapper extends BaseMapper<OrderInfo> {

    OrderInfo findByOrderNo(@Param("orderNo") String orderNo);

    int deleteByOrderNo(@Param("orderNo") String orderNo);
}
