package crf.invest.contorller;

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
}
