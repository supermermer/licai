package crf.invest.contorller;

import crf.invest.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @author
 * @description:
 * @create 2022/9/8-20:25
 */
@Controller
@RequestMapping("accountController")
public class AccountController {

    @Autowired
    AccountService service;
    /**
     * @Author yang
     * @Description //TODO 跳转开户界面
     * @Date 20:31 2022/9/8
     * @Param []
     * @return
     **/
    //    accountController.do?queryAccountList
    @RequestMapping(params = "queryAccountList")
    public String queryAccountList(){
        return "Account/account_list";
    }
    /**
     * @Author yang
     * @Description //TODO 显示开户列表信息
     * @Date 20:32 2022/9/8
     * @Param [request]
     * @return
     **/
//    accountController.do?queryAccountListTable
    @RequestMapping(params = "queryAccountListTable")
    public String queryAccountListTable(HttpServletRequest request){
        service.queryAccountListTable(request);
        return "Account/account_list_table";
    }

    /**
     * @Author yang
     * @Description //TODO 开户的重新上传
     * @Date 13:45 2022/9/9
     * @Param
     * @return
     **/
//     "accountController.do?updateUploadStatus&selectlist="+selectlist
    @RequestMapping(params = "updateUploadStatus")
    public String updateUploadStatus(HttpServletRequest request){
        service.updateUploadStatus(request);
        return "redirect:accountController.do?queryAccountList";
    }
}
