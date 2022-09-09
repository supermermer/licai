package crf.invest.service;

import crf.common.CommonMethod;
import crf.invest.dao.StudentDao;
import crf.invest.entity.Account;
import crf.invest.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author
 * @description:
 * @create 2022/9/9-15:59
 */
@Service
public class StudentServiceImpl implements StudentService{
    @Autowired
    StudentDao dao;
    @Override
    public void queryStudentListTable(HttpServletRequest request) {
        Map<String,Object> map=new HashMap<>();
        String username = CommonMethod.getParameter(request, "username");
        String realname = CommonMethod.getParameter(request, "realname");
        String phone = CommonMethod.getParameter(request, "phone");
        String startTime = CommonMethod.getParameter(request, "startTime");
        String endTime = CommonMethod.getParameter(request, "endTime");
        //完善startTime endTime的格式
        if(!"".equals(startTime)){
            startTime=startTime+" 00:00:00";
        }
        if(!"".equals(endTime)){
            endTime=endTime+" 23:59:59";
        }
        map.put("username",username);
        map.put("realname",realname);
        map.put("phone",phone);
        map.put("startTime",startTime);
        map.put("endTime",endTime);
        //得到开户表的总数量
        Long total=dao.getStudentListCount(map);
        //分页准备
        CommonMethod.setPageInfo(request,request.getParameter("currentPage"),total,
                request.getParameter("pageTurn"),map);
        //获取开户列表的成员信息
        List<Student> userList=dao.getStudentList(map);
        request.setAttribute("userList",userList);
    }
}
