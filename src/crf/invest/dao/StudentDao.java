package crf.invest.dao;

import crf.invest.entity.Student;

import java.util.List;
import java.util.Map;

/**
 * @author
 * @description:
 * @create 2022/9/9-15:59
 */
public interface StudentDao {
//    得到学生的总数量
    Long getStudentListCount(Map<String, Object> map);

//    分页查询学生列表
    List<Student> getStudentList(Map<String, Object> map);
//    得到学生的信息
    Student getStudentInfo(String username);
    //根据id，修改用户信息
    void updateStudent(Student student);
//    保存新增的用户
    void saveStudent(Student student);
//    逻辑删除学生信息 将is_delete设置为1
    void deleteStudent(Map<String,Object> map);
}
