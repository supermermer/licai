package crf.system.interceptors;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import crf.common.CommonConstants;
import crf.common.CommonMethod;
//import crf.system.dao.SystemDao;

/**
 * 角色按钮控制拦截器
 * @author Administrator
 *
 */
@Component
public class ActorBtnInterceptor extends HandlerInterceptorAdapter {

//	@Autowired
//	public SystemDao systemDao;
//
//	// 重写 preHandle()方法，在业务处理器处理请求之前对该请求进行拦截处理
//	public boolean preHandle(HttpServletRequest request,
//			HttpServletResponse response, Object handler) throws Exception {
//		String username = (String)CommonMethod.getSessionInfo(request, CommonConstants.USERNAME);
//		if(username == null)
//			return true;
//		request.setAttribute("btn_ids", "");
//		Set<String>set = systemDao.queryButtonIdList(username);
//		request.setAttribute("btn_ids", "");
//		if(set!=null){
//			StringBuffer sb = new StringBuffer();
//			for(String id : set){
//				sb.append(id+",");
//			}
//			request.setAttribute("btn_ids", sb.toString());
//		}
//		return true;
//	}
}
