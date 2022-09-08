package crf.invest.contorller;

import crf.invest.service.FundingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @author
 * @description:
 * @create 2022/9/8-18:00
 */
@Controller
@RequestMapping("fundingController")
public class FundingController {
    @Autowired
    FundingService service;

    /**
     * @Author yang
     * @Description //TODO 跳转到OB列表
     * @Date 18:08 2022/9/8
     * @Param [request]
     * @return
     **/
//    fundingController.do?queryObList
    @RequestMapping(params = "queryObList")
    public String queryObList(HttpServletRequest request){
        return "Funding/ob_list";
    }

    /**
     * @Author yang
     * @Description //TODO 展现OB列表的信息
     * @Date 18:08 2022/9/8
     * @Param [request]
     * @return
     **/
//    fundingController.do?queryObListTable
    @RequestMapping(params = "queryObListTable")
    public String queryObListTable(HttpServletRequest request){
        service.queryObListTable(request);
        return "Funding/ob_list_table";
    }
    /**
     * @Author yang
     * @Description //TODO 跳转出资列表
     * @Date 19:09 2022/9/8
     * @Param
     * @return
     **/
//    fundingController.do?queryFundingList
    @RequestMapping(params = "queryFundingList")
    public String queryFundingList(){
        return "Funding/funding_list";
    }
    /**
     * @Author yang
     * @Description //TODO 显示出资列表的信息
     * @Date 19:10 2022/9/8
     * @Param 
     * @return 
     **/
//    fundingController.do?queryFundingListTable
    @RequestMapping(params = "queryFundingListTable")
    public String queryFundingListTable(HttpServletRequest request){
        service.queryFundingListTable(request);
        return "Funding/funding_list_table";
    }
}
