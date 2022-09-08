package crf.system.service.impl;

import crf.common.CommonMethod;
import crf.system.dao.SystemDao;
import crf.system.entity.Actor;
import crf.system.entity.OnlineUsers;
import crf.system.entity.Operation;
import crf.system.entity.UserBean;
import crf.system.entity.menu.Item;
import crf.system.entity.menu.Menu;
import crf.system.entity.menu.ParentMenu;
import crf.system.service.SystemService;
import crf.util.DateUtil;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author
 * @description:
 * @create 2022/9/1-18:56
 */
@Service
public class SystemServiceImpl implements SystemService {
    @Autowired
    SystemDao dao;
    @Override
    public boolean login(HttpServletRequest request, UserBean userBean) {
        boolean boo=false;
        HttpSession session = request.getSession(); //判断用户是否登录
        UserBean user = dao.getUser(userBean);
        String flag="";//标记用户的登录状态
        if(user==null){
            flag="1"; //未登录
        }else if(!"1".equals(user.getIs_enable())){
            flag="2";//该用户已被禁用
        }else{
            //用户已经在该机器登录，请换台机器再试
            //保证一个用户名只能在一台机器登录 如果有相同sessionId 则剔除
            OnlineUsers.removeSession(user.getUsername(),session.getId());
            session.setAttribute("user",user);
            session.setAttribute("username",user.getUsername());
            //修改用户的登录时间和ip
            user.setLast_login_ip(request.getRemoteAddr());
            user.setLast_login_time(DateUtil.getDateTime());
            //统计在线用户
            boo=true;
        }
        request.setAttribute("flag",flag);
        return boo;
    }

    @Override
    public JSONArray setUserOperation(String username) {
        JSONArray json = new JSONArray();
        List<Operation> operaList=dao.getUserMenu(username);
        if(operaList.size()!=0){
            List<String> parentIds = new ArrayList<String>();
            for(Operation operation:operaList){
                parentIds.add(operation.getParent_id());
            }
            List<Operation> paentList=dao.getUserParentMenu(parentIds);
            ParentMenu pm = new ParentMenu();
            pm.setId("");
            List<Menu> menu = new ArrayList<Menu>();
            List<Item> itemList = null;
            Menu m=null;
            Item item=null;
            for(Operation ow:paentList){
                itemList=new ArrayList<Item>();
                m = new Menu();
                m.setText(ow.getOperation_name());
                for(Operation on:operaList){
                    if(ow.getOperation_no().equals(on.getParent_id())){
                        item = new Item();
                        item.setId(on.getOperation_no());
                        item.setText(on.getOperation_name());
                        item.setHref(on.getOperation_url());
                        itemList.add(item);
                    }
                }
                m.setItems(itemList);
                menu.add(m);
            }

            //个人信息
            m = new Menu();
            m.setText("个人信息");
            itemList = new ArrayList<Item>();
            item = new Item();
            item.setId("*");
            item.setText("信息修改");
            item.setHref("pc_SystemController.do?updateUserInfo&flag=update&username="+username);
            itemList.add(item);
            m.setItems(itemList);
            menu.add(m);
            pm.setMenu(menu);
            json.add(pm);
        }
        return json;
    }

    /**
     * @Author yang
     * @Description 查询指定用户的信息
     * @Date 18:52 2022/9/2
     * @Param [request]
     * @return
     **/
    @Override
    public List<UserBean> queryUserList(HttpServletRequest request) {
        List<UserBean> list=new ArrayList<>();
        String username = CommonMethod.getParameter(request,"username");
        //存储查询条件
        Map<String,Object> map=new HashMap<>();
        map.put("username",username);
        Long totalCount=dao.getUserListCount(map);
        //对指定用户进行分页查询，设置分页查询信息
        CommonMethod.setPageInfo(request,CommonMethod.getParameter(request,"currentPage"),
                totalCount,CommonMethod.getParameter(request,"pageTurn"),map);
        //分页查询
        list=dao.getUserListPage(map);
        return list;
    }

    /**
     * @Author yang
     * @Description //TODO  添加或者修改用户
     * @Date 20:35 2022/9/2
     * @Param [request]
     * @return
     **/
    @Override
    public void addOrUpdateUser(HttpServletRequest request) {
        String username = CommonMethod.getParameter(request, "username");
        String flag =  request.getParameter("flag");
        UserBean user=new UserBean();
        if("update".equals(flag)){
            user=dao.getUserInfo(username);
        }
        request.setAttribute("flag",flag);
        request.setAttribute("user",user);
    }

    /**
     * @Author yang
     * @Description //TODO 保存用户信息
     * @Date 20:51 2022/9/2
     * @Param [request, user]
     * @return 
     **/
    @Override
    public void saveUser(HttpServletRequest request, UserBean user) {
        String flag = request.getParameter("flag");
        if("update".equals(flag)){
            dao.updateUser(user);
        }else {
            String createid = (String) request.getSession().getAttribute("username");
            String createtime = DateUtil.getDateTime();
            String last_login_ip = request.getRemoteAddr();
            user.setCreateid("wanghao");
            user.setCreatetime(createtime);
            user.setIs_enable("1");
            user.setLast_login_ip(last_login_ip);
            dao.saveUser(user);
        }
        
    }

    /**
     * @Author yang
     * @Description //TODO 查询所有角色信息
     * @Date 21:26 2022/9/2
     * @Param [request]
     * @return
     **/
    @Override
    public List<Actor> queryActorList(HttpServletRequest request) {
        String actor_name = CommonMethod.getParameter(request, "actor_name");
        Map<String,Object> map=new HashMap<>();
        map.put("actor_name",actor_name);
        Long totalActor=dao.getActorCount(map);//查询指定角色数量
        CommonMethod.setPageInfo(request,request.getParameter("currentPage"),
                totalActor,request.getParameter("pageTurn"),map);

        //查询指定角色的信息列表
        List<Actor> list=dao.getActorPage(map);
        return list;
    }

    /**
     * @Author yang
     * @Description //TODO 修改或者新增角色
     * @Date 9:04 2022/9/3
     * @Param [request]
     * @return actor_no=username
     **/
    @Override
    public void addOrUpdateActor(HttpServletRequest request) {
        String flag = request.getParameter("flag");
        Actor actor = new Actor();
        if("update".equals(flag)){
            String actor_no = CommonMethod.getParameter(request, "actor_no");
            actor=dao.getActorInfo(actor_no);
        }
        request.setAttribute("flag",flag);
        request.setAttribute("user",actor);
    }

    /**
     * @Author yang
     * @Description //TODO 保存角色
     * @Date 9:15 2022/9/3
     * @Param [request, actor]
     * @return
     **/
    @Override
    public void saveActor(HttpServletRequest request, Actor actor) {
        String flag = request.getParameter("flag");
        if("update".equals(flag)){
            dao.updateActor(actor);
        }else {
            String createid = (String) request.getSession().getAttribute("username");
            String createtime = DateUtil.getDateTime();
            actor.setCreateid(createid);
            actor.setCreatetime(createtime);
            dao.saveActor(actor);
        }
    }

    /**
     * @Author yang
     * @Description //TODO 通过actor_no 修改当前角色的权限
     * @Date 18:44 2022/9/6
     * @Param [request]
     * @return
     **/
    @Override
    public void getAllOpertionByactor_no(HttpServletRequest request) {
        String actor_no = CommonMethod.getParameter(request, "actor_no");

        //查询当前可用的所有的操作
        List<Operation> operationList=dao.getOperationList();

        //key 为父节点，value为父节点下的子节点
        Map<Operation,List<Operation>> map=new HashMap<>();
        //先遍历父节点
        for (Operation oper:operationList){
            //Parent_id为0，即为父节点
            if("0".equals(oper.getParent_id())){
                List<Operation> list=new ArrayList<>();
                //父节点的Operation_no,与Parent_id相同
                for(Operation item:operationList){
                    if(oper.getOperation_no().equals(item.getParent_id())){
                        list.add(item);
                    }
                }
                map.put(oper,list);
            }
        }

        //根据actor_no，遍历当前角色可以使用的操作
        List<String> sb=dao.getOperationByActorNo(actor_no);
        StringBuilder builder = new StringBuilder();
        for (String str:sb){
            builder.append(str+",");
            System.out.print(str+" ");
        }

        request.setAttribute("actor_no",actor_no);
        request.setAttribute("actor_name",request.getParameter("actor_name"));
        request.setAttribute("map",map);
        request.setAttribute("sb",builder.toString());
    }

    /**
     * @Author yang
     * @Description //TODO 保存用户权限
     * @Date 19:53 2022/9/6
     * @Param [request]
     * @return
     **/
    @Override
    public void saveActorOperation(HttpServletRequest request) {
        String actor_no=CommonMethod.getParameter(request,"actor_no");
        String[] str = request.getParameterValues("operation_no");
        //根据角色编号删除对应的角色菜单中间表的信息
        dao.deleteAcOpByactorno(actor_no);
        //判断是否勾选了权限
        if(str!=null&&str.length!=0){
            Map<String,String> map = new HashMap<String,String>();
            map.put("actor_no",actor_no);
            for(String operation_no:str){
                map.put("operation_no",operation_no);
                dao.saveActorOperation(map);
            }
        }
    }

    /**
     * @Author yang
     * @Description //TODO 修改用户的角色
     * @Date 8:49 2022/9/8
     * @Param [request]
     * @return
     **/
    @Override
    public void allotRoles(HttpServletRequest request) {
        //查询当前所有可用的角色
       List<Actor>  actors=dao.getAllActorList();
        String username = CommonMethod.getParameter(request, "username");
        //根据username获取，对应的角色
        List<String>  str=dao.getActorByUsername(username);
        StringBuilder sb=new StringBuilder();
        for (String s:str){
            sb.append(s+",");
        }
       request.setAttribute("actorList",actors);
       request.setAttribute("realname",request.getParameter("realname"));
       request.setAttribute("username",username);
       request.setAttribute("sb",sb.toString());
    }

    /**
     * @Author yang
     * @Description //TODO 保存修改用户的角色
     * @Date 9:14 2022/9/8
     * @Param [request]
     * @return
     **/
    @Override
    public void saveUserActor(HttpServletRequest request) {
        String username = CommonMethod.getParameter(request, "username");
        String[] str = request.getParameterValues("actor");//获取角色的复选框
        //删除指定username 的角色
        dao.deleteUserByUsername(username);

        //添加username 对应的角色
        if(str!=null||str.length!=0){
            Map<String,String> map=new HashMap<>();
            map.put("username",username);
            for (String s:str){
                map.put("actor_no",s);
                //添加用户的角色
                dao.saveUserActor(map);
            }
        }
    }

    /**
     * @Author yang
     * @Description //TODO 用户的启用与禁用功能
     * @Date 9:52 2022/9/8
     * @Param [request]
     * @return
     **/
    @Override
    public void closeOrOpenUser(HttpServletRequest request) {
        String is_enable = request.getParameter("is_enable");
        String username = request.getParameter("username");
        UserBean bean = dao.getUserInfo(username);
        if("0".equals(is_enable)){
            bean.setIs_enable("1");
        }else {
            bean.setIs_enable("0");
        }
        dao.saveUser(bean);
    }

    /**
     * @Author yang
     * @Description //TODO 修改登录用户的个人信息
     * @Date 10:07 2022/9/8
     * @Param [request]
     * @return
     **/
    @Override
    public void updateUserInfo(HttpServletRequest request) {
        String flag = CommonMethod.getParameter(request, "flag");
        String username = CommonMethod.getParameter(request, "username");
        UserBean userInfo = dao.getUserInfo(username);
        request.setAttribute("user",userInfo);
        request.setAttribute("flag",flag);
    }
}
