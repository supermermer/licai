package crf.invest.service;

import javax.servlet.http.HttpServletRequest;

/**
 * @author
 * @description:
 * @create 2022/9/8-20:28
 */
public interface AccountService {
    void queryAccountListTable(HttpServletRequest request);

    void updateUploadStatus(HttpServletRequest request);
}
