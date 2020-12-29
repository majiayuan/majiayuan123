package com.mjy.service;

import com.mjy.pojo.Choose;
import com.mjy.pojo.Page;
import com.mjy.pojo.User;
import com.mjy.pojo.User1;

import java.util.List;

public interface UserService {
    //查询全部用户
    List<User> selectAllUser();
//添加用户
    int addUser(User user);
//
    Page<User> findCurrentPage(int pageNum,User1 user1);

    User selectUserById(int id);

    int updataUserById(User user);

    int deleteUserById(Choose choose);

    List selectAllDepartment();

    List selectAllDuty();
}
