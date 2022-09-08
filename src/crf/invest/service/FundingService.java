package crf.invest.service;

import javax.servlet.http.HttpServletRequest;

/**
 * @author
 * @description:
 * @create 2022/9/8-18:01
 */
public interface FundingService {
    void queryObListTable(HttpServletRequest request);

    void queryFundingListTable(HttpServletRequest request);
}
