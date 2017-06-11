package com.ssm.test.mapper;

import com.ssm.test.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by King on 2017/5/10.
 */
public interface UserMapper {
        public List<User> selectOneById(@Param("id") String id);
        public void insertUser(List<User> users);
        public void deletUser(@Param("id")int id);
        public void updateUser(User user);
}
