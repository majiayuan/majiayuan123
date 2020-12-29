package com.mjy.controller;

import com.mjy.pojo.Choose;
import com.mjy.pojo.Page;
import com.mjy.pojo.User;
import com.mjy.pojo.User1;
import com.mjy.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
//controller调用service层
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    //查询全部的用户并且返回到一个用户展示界面
    @RequestMapping("/findCurrentPage")
    public String findCurrentPage(@RequestParam(defaultValue = "1") int pageNum ,Model model, User1 user1){

       /* if (null==user1.getDuty1()&&null==user1.getUserName1()&&null==user1.getDepartment1()){
            System.out.println("kongkongkogng");

        }else{
            model.addAttribute("user1",user1);
            System.out.println("不不不不不");
        }*/

        System.out.println(user1);
        Page <User> page=userService.findCurrentPage(pageNum,user1);

        //把全部的department和duty返回
        List listDepartment =userService.selectAllDepartment();
        List listDuty =userService.selectAllDuty();

        model.addAttribute("listDepartment",listDepartment);
        model.addAttribute("listDuty",listDuty);
        model.addAttribute("page",page);
        return "allUser";
    }
//点击请求跳转到增加页面的表单
    @RequestMapping("/toAddUser")
    public String toAddUser(){
        System.out.println("123");
        return "addUser";
    }
//增加页面表单的提交
    @RequestMapping("/addUser")
    public String addUser(User user){

        System.out.println(user);
        System.out.println("456");
        userService.addUser(user);
        return "redirect:/user/findCurrentPage";
    }
    //跳转到修改页面
    @RequestMapping("/toUpdataUser")
    public String toUpdataUser(int id,Model model){
        User user=userService.selectUserById(id);
        System.out.println("需要修改的user"+ user);
        model.addAttribute("user",user);
        return "updataUser";
    }

    @RequestMapping("/updataUser")
    public String updataUser(User user){
        System.out.println("修改后的user"+user);
        userService.updataUserById(user);

        return "redirect:/user/findCurrentPage";
    }

    @RequestMapping("/deleteUserById")
    public String deleteUserById(Choose choose){
        System.out.println("需要删除的id"+choose);
        userService.deleteUserById(choose);

        return "redirect:/user/findCurrentPage";
    }
    @RequestMapping("/userDetail")
    public String userDetail(int id,Model model){
        System.out.println("user的Id"+id);

        User user = userService.selectUserById(id);
        model.addAttribute("user",user);

        return "userDetail";
    }
}
