package crf.system.dao;

import crf.system.entity.Actor;
import crf.system.entity.Operation;
import crf.system.entity.UserBean;

import java.util.List;
import java.util.Map;

/**
 * @author
 * @description:
 * @create 2022/9/1-10:43
 */

public interface SystemDao {
    UserBean getUser(UserBean user);

//    void updateUser(UserBean user);

    List<Operation> getUserMenu(String username);

    List<Operation> getUserParentMenu(List<String> parentIds);

    //查询所有的用户信息
    List<UserBean> queryUserList();

    //查询指定用户名的用户数目
    Long getUserListCount(Map<String, Object> map);

    //分页查询指定用户名的用户列表
    List<UserBean> getUserListPage(Map<String, Object> map);

    //得到用户信息
    UserBean getUserInfo(String username);

    //修改用户
    void updateUser(UserBean user);

    //保存用户
    void saveUser(UserBean user);

    //得到指定角色的数量
    Long getActorCount(Map<String, Object> map);

    //分页查询指定角色列表
    List<Actor> getActorPage(Map<String, Object> map);

    //得到指定角色的信息
    Actor getActorInfo(String actorName);

    //修改角色
    void updateActor(Actor actor);

    //保存角色
    void saveActor(Actor actor);

    //查询当前可用的所有的操作
    List<Operation> getOperationList();

    //根据actor_no，遍历当前角色可以使用的操作
    List<String> getOperationByActorNo(String actor_no);
//    先删除对应actor_no 的操作
    int deleteAcOpByactorno(String actor_no);

    //保存角色修改
    void saveActorOperation(Map<String, String> map);

    //查询当前所有可用的角色
    List<Actor> getAllActorList();

    //根据username获取，对应的角色
    List<String>  getActorByUsername(String username);
    //删除指定username 的角色
    void deleteUserByUsername(String username);

    //添加用户的角色
    void saveUserActor(Map<String, String> map);
}
