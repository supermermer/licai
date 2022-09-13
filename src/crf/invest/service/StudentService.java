package crf.invest.service;

import crf.invest.entity.Student;

import javax.servlet.http.HttpServletRequest;

/**
 * @author
 * @description:
 * @create 2022/9/9-15:58
 */
public interface StudentService {
    void queryStudentListTable(HttpServletRequest request);

    void addOrUpdateStudent(HttpServletRequest request);

    void saveUser(HttpServletRequest request, Student student);

    void deleteStudent(HttpServletRequest request);
}
