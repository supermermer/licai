package crf.invest.dao;

import crf.invest.entity.Account;

import java.util.List;
import java.util.Map;

/**
 * @author
 * @description:
 * @create 2022/9/8-20:27
 */
public interface AccountDao {
    //得到开户表的总数量
    Long getAccountListCount(Map<String, Object> map);

    //获取开户列表的成员信息
    List<Account> getAccountList(Map<String, Object> map);

    //修改指定user.accountId的UploadStatus
    void updateUploadStatus(String select);
}
