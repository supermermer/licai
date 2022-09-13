package crf.invest.entity;

/**
 * @author
 * @description: Student实体类，对应student表
 * @create 2022/9/9-16:07
 */
public class Student {
    private Integer student_id;  //学生编号
    private String username;   //学生用户名
    private String password;//学生密码
    private String realname;  //学生真实姓名
    private String phone;    //学生电话
    private String email;//学生邮箱
    private String createtime;//学生创建时间
    private String is_delete;//是否被删除，逻辑删除 0表示未删除 1表示已经删除

    public String getIs_delete() {
        return is_delete;
    }

    public void setIs_delete(String is_delete) {
        this.is_delete = is_delete;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getStudent_id() {
        return student_id;
    }

    public void setStudent_id(Integer student_id) {
        this.student_id = student_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }
}
