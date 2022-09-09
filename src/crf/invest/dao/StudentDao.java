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
    Long getStudentListCount(Map<String, Object> map);

    List<Student> getStudentList(Map<String, Object> map);
}
