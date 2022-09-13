package crf.invest.contorller;

import crf.invest.entity.Student;
import crf.invest.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @author
 * @description:
 * @create 2022/9/9-15:01
 */
@Controller
@RequestMapping("studentController")
public class StudentController {
    @Autowired
    StudentService service;
    /**
     * @Author yang
     * @Description //TODO 跳转到student列表界面
     * @Date 15:50 2022/9/9
     * @Param []
     * @return 
     **/
//    studentController.do?studentList
    @RequestMapping(params = "studentList")
    public String studentList(){
        return "Student/studentlist";
    }
    /**
     * @Author yang
     * @Description //TODO 展示学生列表界面
     * @Date 15:58 2022/9/9
     * @Param []
     * @return
     **/
//    StudentController.do?queryStudentListTable
    @RequestMapping(params = "queryStudentListTable")
    public String queryStudentListTable(HttpServletRequest request){
        service.queryStudentListTable(request);
        return "Student/studentlist_table";
    }
    /**
     * @Author yang
     * @Description //TODO 学生信息的添加与修改
     * @Date 15:53 2022/9/11
     * @Param
     * @return
     **/
//    "studentController.do?addOrUpdateStudent&flag=update&username="+username;
    @RequestMapping(params = "addOrUpdateStudent")
    public String addOrUpdateStudent(HttpServletRequest request){
        service.addOrUpdateStudent(request);
        return "Student/addOrUpdateStudent";
    }
    /**
     * @Author yang
     * @Description //TODO 保存学生信息，或者修改学生信息
     * @Date 16:15 2022/9/11
     * @Param
     * @return
     **/
//    studentController.do?saveUser
    @RequestMapping(params = "saveUser")
    public String saveUser(HttpServletRequest request, Student student){
        service.saveUser(request,student);
        return "redirect:studentController.do?studentList";
    }
    /**
     * @Author yang
     * @Description //TODO 逻辑删除学生信息
     * @Date 16:41 2022/9/11
     * @Param
     * @return
     **/
//    "studentController.do?deleteStudent&username="+username+"&realname="+realname;
    @RequestMapping(params = "deleteStudent")
    public String deleteStudent(HttpServletRequest request){
        service.deleteStudent(request);
        return "success";
    }
}
