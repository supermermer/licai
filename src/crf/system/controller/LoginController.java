package crf.system.controller;

import crf.system.entity.UserBean;
import crf.system.service.SystemService;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.logging.slf4j.Slf4jImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @author
 * @description:
 * @create 2022/9/1-18:49
 */
@Controller
@RequestMapping(value = "/pc_LoginController.do")
public class LoginController {

    @Autowired
    SystemService service;


    @RequestMapping(value = "login")
    public String login(HttpServletRequest request, UserBean user) throws UnsupportedOperationException{

        String path="../login/login";
        //登录检查
        boolean boo= service.login(request,user);
        if(boo){
            path="redirect:pc_SystemController.do?toIndex";
        }
        return path;
    }
}
