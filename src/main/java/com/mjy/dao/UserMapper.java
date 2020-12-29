package com.mjy.dao;

import com.mjy.pojo.Choose;
import com.mjy.pojo.Page;
import com.mjy.pojo.User;
import com.mjy.pojo.User1;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    //查询全部用户
    List <User> selectAllUser();
//增加用户
    int addUser(User user);
//查询总记录数
    int selectAllCount();
//查询当前页面的所有用户
    List<User> selectCurrentAllUser(@Param("pageStartIndex") int pageStartIndex,@Param("pageSize") int pageSize,@Param("userName1") String userName1, @Param("department1") String department1,@Param("duty1") String duty1);

    User selectUserById(int id);

    int updataUserById(User user);

    int deleteUserById(Choose choose);
    //通过条件查询数据的count
    List<User> selectCountByName(@Param("userName1") String userName1, @Param("department1") String department1,@Param("duty1") String duty1);
    //查询全部department
    List<String> selectAllDepartment();
    //查询全部duty
    List<String> selectAllDuty();
}
