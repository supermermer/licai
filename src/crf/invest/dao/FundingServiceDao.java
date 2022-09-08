package crf.invest.dao;

import crf.invest.entity.Funding;

import java.util.List;
import java.util.Map;

/**
 * @author
 * @description:
 * @create 2022/9/8-18:02
 */
public interface FundingServiceDao {
    //得到OBList表的总数量
    Long getObListCount(Map<String,Object> map);

    //分页查询所有的OBList的信息
    List<Funding> getObList(Map<String, Object> map);
    //获取所有金额
    Double getSumMoney(Map<String, Object> map);

    //得到出资表的总数量
    Long getFundingListCount(Map<String, Object> map);

    //分页查询所有的出资List的信息
    List<Funding> getFundingList(Map<String, Object> map);
    //获取出资所有金额
    Double getFundingSumMoney(Map<String, Object> map);
}
