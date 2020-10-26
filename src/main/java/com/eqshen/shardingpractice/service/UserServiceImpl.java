package com.eqshen.shardingpractice.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eqshen.shardingpractice.entity.UserInfo;
import com.eqshen.shardingpractice.mapper.UserMapper;

/**
 * @author eqshen
 * @description
 * @date 2020/10/26
 */
public class UserServiceImpl extends ServiceImpl<UserMapper, UserInfo> implements UserService{
}
