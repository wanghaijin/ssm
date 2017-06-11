package com.ssm.test.service;

import com.github.pagehelper.PageInfo;

/**
 * Created by King on 2017/5/14.
 */
public interface UserService {
        public PageInfo findOneById(String id, int pageNum, int pageSize);
}
