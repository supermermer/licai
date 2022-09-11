package crf.invest.service.impl;

import crf.common.CommonMethod;
import crf.invest.dao.StudentDao;
import crf.invest.entity.Account;
import crf.invest.entity.Student;
import crf.invest.service.StudentService;
import crf.util.DateUtil;
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
public class StudentServiceImpl implements StudentService {
    @Autowired
    StudentDao dao;
    /**
     * @Author yang
     * @Description //TODO 查询学生列表
     * @Date 16:06 2022/9/11
     * @Param [request]
     * @return
     **/
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

    /**
     * @Author yang
     * @Description //TODO 学生的添加与修改
     * @Date 15:54 2022/9/11
     * @Param [request]
     * @return
     **/
    @Override
    public void addOrUpdateStudent(HttpServletRequest request) {
        String flag = CommonMethod.getParameter(request, "flag");
        String username = CommonMethod.getParameter(request, "username");
        Student user=new Student();
        //如果flag==add,则新增学生
        if("update".equals(flag)){
            user=dao.getStudentInfo(username);
        }
        //设置请求域中的数据
        request.setAttribute("flag",flag);
        request.setAttribute("user",user);
    }

    /**
     * @Author yang
     * @Description //TODO 保存学生信息，或者修改学生信息
     * @Date 16:19 2022/9/11
     * @Param [request]
     * @return
     **/
    @Override
    public void saveUser(HttpServletRequest request,Student student) {
        String flag = CommonMethod.getParameter(request, "flag");
        //如果是修改
        if("update".equals(flag)){
            //根据id，修改用户信息
            dao.updateStudent(student);
        }else {
            //设置创建时间
            student.setCreatetime(DateUtil.getDateTime());
            //设置学生是否被删除
            student.setIs_delete("0");
            //保存新增的用户
            dao.saveStudent(student);
        }
    }

    /**
     * @Author yang
     * @Description //TODO 逻辑删除学生信息
     * @Date 16:42 2022/9/11
     * @Param [request]
     * @return
     **/
    @Override
    public void deleteStudent(HttpServletRequest request) {
        Map<String,Object> map=new HashMap<>();
        String username = CommonMethod.getParameter(request, "username");
        String realname = CommonMethod.getParameter(request, "realname");
        map.put("username",username);
        map.put("realname",realname);
        //逻辑删除学生信息 将is_delete设置为1
        dao.deleteStudent(map);
    }
}
