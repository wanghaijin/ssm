package com.ssm.test.service.impl;

import com.fasterxml.jackson.databind.util.BeanUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.test.mapper.UserMapper;
import com.ssm.test.pojo.User;
import com.ssm.test.service.UserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by King on 2017/5/14.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    public PageInfo findOneById(String id,int pageNum,int pageSzie) {
        PageHelper.startPage(pageNum,pageSzie);
       List<User> users=userMapper.selectOneById(id);

        return new PageInfo(users);
    }


}
