package crf.invest.dao;

import java.util.Map;

/**
 * @author
 * @description:
 * @create 2022/9/8-20:27
 */
public interface AccountDao {
    //得到开户表的总数量
    Long getAccountListCount(Map<String, Object> map);
}
