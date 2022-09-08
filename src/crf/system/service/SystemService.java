package crf.system.service;

import crf.system.entity.Actor;
import crf.system.entity.Operation;
import crf.system.entity.UserBean;
import net.sf.json.JSONArray;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @author
 * @description:
 * @create 2022/9/1-18:57
 */

public interface SystemService {
    boolean login(HttpServletRequest request,UserBean userBean);
    JSONArray setUserOperation(String username);
    List<UserBean> queryUserList(HttpServletRequest request);

    void addOrUpdateUser(HttpServletRequest request);

    void saveUser(HttpServletRequest request, UserBean user);

    List<Actor> queryActorList(HttpServletRequest request);

    void addOrUpdateActor(HttpServletRequest request);

    void saveActor(HttpServletRequest request, Actor actor);

    void getAllOpertionByactor_no(HttpServletRequest request);

    void saveActorOperation(HttpServletRequest request);

    void allotRoles(HttpServletRequest request);

    void saveUserActor(HttpServletRequest request);

    void closeOrOpenUser(HttpServletRequest request);

    void updateUserInfo(HttpServletRequest request);
}
