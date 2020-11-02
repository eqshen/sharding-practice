package com.eqshen.shardingpractice.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.Date;

/**
 * @author eqshen
 * @description
 * @date 2020/10/26
 */
@TableName("t_order")
@Data
public class OrderInfo {
    @TableId(value = "id",type = IdType.AUTO)
    private Long id;

    @TableField(value = "order_no")
    private String orderNo;

    private String orderName;

    private Integer orderStatus;

    private Long userId;

    private Date createTime;

    private Date updateTime;

}
