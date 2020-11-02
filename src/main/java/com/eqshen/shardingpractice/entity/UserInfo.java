package com.eqshen.shardingpractice.entity;

import com.baomidou.mybatisplus.annotation.IdType;
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
@TableName("t_user")
@Data
public class UserInfo {
    @TableId(value = "id",type = IdType.AUTO)
    private Long id;

    private Long userId;

    private String name;

    private Integer age;

    private String address;

    private String mobile;

    private Date createTime;

    private Date updateTime;
}
