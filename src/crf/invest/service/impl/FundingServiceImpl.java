package crf.invest.service.impl;

import crf.common.CommonMethod;
import crf.invest.dao.FundingServiceDao;
import crf.invest.entity.Funding;
import crf.invest.service.FundingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author
 * @description:
 * @create 2022/9/8-18:01
 */
@Service
public class FundingServiceImpl implements FundingService {
    @Autowired
    FundingServiceDao dao;

    /**
     * @Author yang
     * @Description //TODO 展现所有OB列表的信息
     * @Date 18:09 2022/9/8
     * @Param [request]
     * @return
     **/
    @Override
    public void queryObListTable(HttpServletRequest request) {
        Map<String,Object> map=new HashMap<>();
        String fundPhoneNo = CommonMethod.getParameter(request, "fundPhoneNo");
        String startTime = CommonMethod.getParameter(request, "startTime");
        String endTime = CommonMethod.getParameter(request, "endTime");
        //完善startTime endTime的格式
        if(!"".equals(startTime)){
            startTime=startTime+" 00:00:00";
        }
        if(!"".equals(endTime)){
            endTime=endTime+" 23:59:59";
        }
        map.put("fundPhoneNo",fundPhoneNo);
        map.put("startTime",startTime);
        map.put("endTime",endTime);
        //得到OBList表的总数量
        Long total=dao.getObListCount(map);
        System.out.println(total);
        //map中添加分页
        CommonMethod.setPageInfo(request,request.getParameter("currentPage"),
                total,request.getParameter("pageTurn"),map);
        //分页查询所有的OBList的信息
        List<Funding> list=dao.getObList(map);
        //获取所有金额
        Double sumMoney=dao.getSumMoney(map);
        request.setAttribute("list",list);
        request.setAttribute("sumMoney",sumMoney);
    }

    /**
     * @Author yang
     * @Description //TODO 显示出资列表的信息
     * @Date 19:12 2022/9/8
     * @Param [request]
     * @return
     **/
    @Override
    public void queryFundingListTable(HttpServletRequest request) {
        Map<String,Object> map=new HashMap<>();
        //手机号
        String fundPhoneNo = CommonMethod.getParameter(request, "fundPhoneNo");
        //冻结状态
        String fundState = CommonMethod.getParameter(request, "fundState");
        //上传状态
        String fundReqState = CommonMethod.getParameter(request, "fundReqState");
        //出资时间
        String startTime = CommonMethod.getParameter(request, "startTime");
        //出资时间
        String endTime = CommonMethod.getParameter(request, "endTime");
        //姓名
        String fundName = CommonMethod.getParameter(request, "fundName");
        //冻结时间
        String freezeStartTime = CommonMethod.getParameter(request, "freezeStartTime");
        //冻结时间
        String freezeEndTime = CommonMethod.getParameter(request, "freezeEndTime");
        //上传时间
        String uploadStartTime = CommonMethod.getParameter(request, "uploadStartTime");
        //上传时间
        String uploadEndTime = CommonMethod.getParameter(request, "uploadEndTime");
        //用户来源
        String dataSource = CommonMethod.getParameter(request, "dataSource");

        //完善startTime endTime的格式
        if(!"".equals(startTime)){
            startTime=startTime+" 00:00:00";
        }
        if(!"".equals(endTime)){
            endTime=endTime+" 23:59:59";
        }
        if(!"".equals(freezeStartTime)){
            freezeStartTime=freezeStartTime+" 23:59:59";
        }
        if(!"".equals(freezeEndTime)){
            freezeEndTime=freezeEndTime+" 23:59:59";
        }
        if(!"".equals(uploadStartTime)){
            uploadStartTime=uploadStartTime+" 23:59:59";
        }
        if(!"".equals(uploadEndTime)){
            uploadEndTime=uploadEndTime+" 23:59:59";
        }
        map.put("fundPhoneNo",fundPhoneNo);
        map.put("fundState",fundState);
        map.put("fundReqState",fundReqState);
        map.put("startTime",startTime);
        map.put("endTime",endTime);
        map.put("fundName",fundName);
        map.put("freezeStartTime",freezeStartTime);
        map.put("freezeEndTime",freezeEndTime);
        map.put("uploadStartTime",uploadStartTime);
        map.put("uploadEndTime",uploadEndTime);
        map.put("dataSource",dataSource);
        //得到出资表的总数量
        Long total=dao.getFundingListCount(map);

        //map中添加分页
        CommonMethod.setPageInfo(request,request.getParameter("currentPage"),
                total,request.getParameter("pageTurn"),map);
        //分页查询所有的出资List的信息
        List<Funding> list=dao.getFundingList(map);
        //获取所有金额
        Double sumMoney=dao.getFundingSumMoney(map);

        request.setAttribute("list",list);
        request.setAttribute("sumMoney",sumMoney);
    }
}
