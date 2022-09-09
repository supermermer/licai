package crf.system.controller;

import crf.common.CommonConstants;
import crf.common.CommonMethod;
import crf.system.entity.Actor;
import crf.system.entity.Operation;
import crf.system.entity.UserBean;
import crf.system.service.SystemService;
import crf.system.taglib.PageTag;
import org.apache.ibatis.logging.log4j.Log4jImpl;
import org.slf4j.Logger;
import org.slf4j.helpers.NOPLogger;
import org.slf4j.impl.Log4jLoggerAdapter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.logging.LogManager;

import static org.slf4j.helpers.NOPLogger.NOP_LOGGER;

/**
 * @author
 * @description:
 * @create 2022/9/1-10:23
 */
@Controller
@RequestMapping("/pc_SystemController")
public class SystemCotroller {
    @Autowired
    SystemService service;
    @RequestMapping(params = "toIndex")
    public String toIndex(HttpServletRequest request) throws UnsupportedOperationException{
        //得到Session中的用户名
        String username = (String) CommonMethod.getSessionInfo(request, CommonConstants.USERNAME);
        request.setAttribute("json", service.setUserOperation(username));
        return "index";
    }

    //退出系统
//    pc_SystemController.do?logOut&username="+username
    @RequestMapping(params = "logOut")
    public String logOut(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("username");
        session.removeAttribute("user");
        return "redirect:/";
    }

//    pc_SystemController.do?getUserList
    @RequestMapping(params = "getUserList")
    public String getUserList(){
        return "/User/userlist";
    }

    //跳转到UserList界面 queryUserListTable
    @RequestMapping( params ="queryUserListTable")
    public ModelAndView queryUserListTable(HttpServletRequest request){
        ModelAndView model=new ModelAndView();
        model.setViewName("/User/userlist_table");
        List<UserBean> userList= service.queryUserList(request);
        model.addObject("userList",userList);
        return model;
    }

    //跳转到修改或新增用户的界面
//    pc_SystemController.do?addOrUpdateUser&flag=add
    @RequestMapping(params = "addOrUpdateUser")
    public String addOrUpdateUser(HttpServletRequest request){
        service.addOrUpdateUser(request);
        return "User/addOrUpdateUser";
    }

    //保存用户，并返回到用户列表界面
//    pc_SystemController.do?saveUser
    @RequestMapping(params = "saveUser")
    public String saveUser(HttpServletRequest request,UserBean user){
        service.saveUser(request,user);
        return "redirect:pc_SystemController.do?getUserList";
    }

    //角色管理界面
//    pc_SystemController.do?getActorList
    @RequestMapping(params = "getActorList")
    public String getActorList(){
        return "Role/actorlist";
    }
    //角色列表
//    pc_SystemController.do?queryActorListTable
    @RequestMapping(params = "queryActorListTable")
    public ModelAndView  queryActorListTable(HttpServletRequest request){
        ModelAndView model=new ModelAndView();
        model.setViewName("Role/actorlist_table");
        List<Actor> list=service.queryActorList(request);
        model.addObject("userList",list);
        return model;
    }

    /**
     * @Author yang
     * @Description //TODO 角色的新增或者修改
     * @Date 9:04 2022/9/3
     * @Param [request]
     * @return
     **/
//    pc_SystemController.do?addOrUpdateActor&flag=add
    @RequestMapping(params = "addOrUpdateActor")
    public String  addOrUpdateActor(HttpServletRequest request){
        service.addOrUpdateActor(request);
        return "Role/addOrUpdateActor";
    }

    /**
     * @Author yang
     * @Description //TODO 保存角色信息
     * @Date 9:13 2022/9/3
     * @Param
     * @return
     **/
//    pc_SystemController.do?saveActor
    @RequestMapping(params = "saveActor")
    public String saveActor(HttpServletRequest request,Actor actor){
        service.saveActor(request,actor);
        return "redirect:pc_SystemController.do?getActorList";
    }

    /**
     * @Author yang
     * @Description //TODO 修改角色权限
     * @Date 18:43 2022/9/6
     * @Param [request]
     * @return
     **/
//    "pc_SystemController.do?allotOperation&actor_no="+actor_no+"&actor_name="+actor_name;
    @RequestMapping(params = "allotOperation")
    public String allotOperation(HttpServletRequest request){

        service.getAllOpertionByactor_no(request);
        return "Role/allotOperation";
    }

    /**
     * @Author yang
     * @Description //TODO 保存用户权限
     * @Date 19:34 2022/9/6
     * @Param
     * @return
     **/
//    pc_SystemController.do?saveActorOperation
    @RequestMapping(params = "saveActorOperation")
    public String saveActorOperation(HttpServletRequest request ){
        service.saveActorOperation(request);
        return "redirect:pc_SystemController.do?getActorList";
    }

    /**
     * @Author yang
     * @Description //TODO 修改用户的角色
     * @Date 8:46 2022/9/8
     * @Param
     * @return
     **/
//    pc_SystemController.do?allotRoles&username="+username+"&realname="+realname;
     @RequestMapping(params = "allotRoles")
    public String allotRoles(HttpServletRequest request){
         service.allotRoles(request);
         return "User/allotRoles";
     }
     /**
      * @Author yang
      * @Description //TODO 保存修改用户的角色
      * @Date 9:10 2022/9/8
      * @Param
      * @return
      **/
//    pc_SystemController.do?saveUserActor
    @RequestMapping(params = "saveUserActor")
    public String saveUserActor(HttpServletRequest request){
        service.saveUserActor(request);
        return "redirect:pc_SystemController.do?getUserList";
    }
    /**
     * @Author yang
     * @Description //TODO 用户的启用或禁用功能
     * @Date 9:51 2022/9/8
     * @Param
     * @return
     **/
//    pc_SystemController.do?closeOrOpenUser&is_enable="+is_enable+"&username="+username;
    @RequestMapping(params = "closeOrOpenUser")
    public String closeOrOpenUser(HttpServletRequest request){
        service.closeOrOpenUser(request);
        return "redirect:pc_SystemController.do?getUserList";
    }

    /**
     * @Author yang
     * @Description //TODO 修改登录用户的个人信息
     * @Date 10:05 2022/9/8
     * @Param
     * @return
     **/
//    ("pc_SystemController.do?updateUserInfo&flag=update&username="+username);
    @RequestMapping(params = "updateUserInfo")
    public String updateUserInfo(HttpServletRequest request){
        service.updateUserInfo(request);
        return "User/updateUserInfo";
    }
//    pc_SystemController.do?saveUserInfo
    @RequestMapping(params = "saveUserInfo")
    public String saveUserInfo(HttpServletRequest request,UserBean userBean){
        service.saveUser(request,userBean);
        return CommonConstants.SUCCESS_PAGE;
    }
}
