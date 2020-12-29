package com.mjy.service;

import com.mjy.dao.UserMapper;
import com.mjy.pojo.Choose;
import com.mjy.pojo.Page;
import com.mjy.pojo.User;
import com.mjy.pojo.User1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {

    //Service 层调dao层,把dao层组合进来
    @Autowired
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }



    public List<User> selectAllUser() {
        //调用dao层的方法
        return userMapper.selectAllUser();

    }

    @Override
    public int addUser(User user) {
        return  userMapper.addUser(user);
    }

    @Override
    public Page<User> findCurrentPage(int pageNum ,User1 user1) {
        Page<User> page=new Page<>();
        //把传进来额pageNum放进去就剩totalRows和datas没有值
        //totalRows和datas进数据库中进行查询
        //pageNum有值了，pageSize有初始值，pageStartIndex可以格布局pageNum计算得出
        //totalPages也可以根据pageNum和pageSize算出
        page.setPageNum(pageNum);


        //调用dao层对象进行数据库查询为datas赋值
        int pageStartIndex=page.getPageStartIndex();
        int pageSize=page.getPageSize();
        String userName1=user1.getUserName1();
        String department1=user1.getDepartment1();
        String duty1=user1.getDuty1();
        List <User> datas=userMapper.selectCurrentAllUser(pageStartIndex,pageSize,userName1,department1,duty1);
        page.setDatas(datas);


        //调用dao层方法进行数据库查询为totalRows赋值
        List totalRows=userMapper.selectCountByName(userName1,department1,duty1);
        page.setTotalRows(totalRows.size());
        return page;
    }

    @Override
    public User selectUserById(int id) {
        return userMapper.selectUserById(id);
    }

    @Override
    public int updataUserById(User user) {
        return userMapper.updataUserById(user);

    }

    @Override
    public int deleteUserById(Choose choose) {
        return userMapper.deleteUserById(choose);
    }



    @Override
    public List selectAllDepartment() {
        return userMapper.selectAllDepartment();
    }

    @Override
    public List selectAllDuty() {
        return userMapper.selectAllDuty();
    }
}
