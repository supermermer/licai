package crf.system.filter;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 主要目的：过滤字符编码；其次，做一些应用逻辑判断等.
// Filter跟web应用一起启动
// 当web应用重新启动或销毁时，Filter也被销毁
public class CharsetFilter implements Filter
{
	private FilterConfig config = null;
	
	public void destroy()
	{
		System.out.println("MyCharsetFilter准备销毁...");
	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1,FilterChain chain) throws IOException, ServletException
	{
		// 强制类型转换
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;
		// 获取web.xm设置的编码集，设置到Request、Response中
		request.setCharacterEncoding(config.getInitParameter("encoding"));
		response.setContentType(config.getInitParameter("contentType"));
		response.setCharacterEncoding(config.getInitParameter("charset"));
		// 将请求转发到目的地
		chain.doFilter(request, response);
	}

	public void init(FilterConfig arg0) throws ServletException
	{
		this.config = arg0;
		System.out.println("MyCharsetFilter初始化...");
	}
}