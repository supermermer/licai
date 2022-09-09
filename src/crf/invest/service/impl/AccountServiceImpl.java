package crf.invest.service.impl;

import crf.common.CommonMethod;
import crf.invest.dao.AccountDao;
import crf.invest.entity.Account;
import crf.invest.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author
 * @description:
 * @create 2022/9/8-20:28
 */
@Service
public class AccountServiceImpl implements AccountService {
    @Autowired
    AccountDao dao;

    /**
     * @Author yang
     * @Description //TODO 显示开户列表信息
     * @Date 20:32 2022/9/8
     * @Param [request]
     * @return
     **/
    @Override
    public void queryAccountListTable(HttpServletRequest request) {
        Map<String,Object> map=new HashMap<>();
        //手机号
        String accountPhoneNo = CommonMethod.getParameter(request, "accountPhoneNo");
        //上传状态
        String accountIsUpload = CommonMethod.getParameter(request, "accountIsUpload");
        //开户状态
        String accountIsSuccess = CommonMethod.getParameter(request, "accountIsSuccess");
        //开户姓名
        String accountName = CommonMethod.getParameter(request, "accountName");
        //开户时间
        String startTime = CommonMethod.getParameter(request, "startTime");
        //开户时间
        String endTime = CommonMethod.getParameter(request, "endTime");

        //完善startTime endTime的格式
        if(!"".equals(startTime)){
            startTime=startTime+" 00:00:00";
        }
        if(!"".equals(endTime)){
            endTime=endTime+" 23:59:59";
        }

        map.put("accountPhoneNo",accountPhoneNo);
        map.put("accountIsUpload",accountIsUpload);
        map.put("accountIsSuccess",accountIsSuccess);
        map.put("accountName",accountName);
        map.put("startTime",startTime);
        map.put("endTime",endTime);

        //得到开户表的总数量
        Long total=dao.getAccountListCount(map);
        //分页准备
        CommonMethod.setPageInfo(request,request.getParameter("currentPage"),total,
                request.getParameter("pageTurn"),map);
        //获取开户列表的成员信息
        List<Account> list=dao.getAccountList(map);
        //account_list_table.jsp 添加参数
        request.setAttribute("list",list);
    }

    /**
     * @Author yang
     * @Description //TODO 更新开户的重新上传
     * @Date 13:46 2022/9/9
     * @Param [request]
     * @return 
     **/
    @Override
    public void updateUploadStatus(HttpServletRequest request) {
        String selectlist= request.getParameter("selectlist");
        //如果传入的参数不为空，则进行更新
        if(selectlist!=null||selectlist.length()!=0){
            String[] strings = selectlist.split(",");
            for (String select:strings){
                dao.updateUploadStatus(select);
            }
        }
    }
}
