package com.spark.bsel.servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

public class EncodingFilter implements Filter {
	
	private static String encoding;
	private static final String DEFAULT_CHARSET="UTF-8";
 

	@Override
	// 应用程序启动前有容器调用
	public void init(FilterConfig filterConfig) throws ServletException {
	   encoding = filterConfig.getInitParameter("encoding");
	}

	@Override
	// 对于每个URL映射到该过滤器的请求，由容器调用该方法

	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
	    if(encoding!=null){
	        servletRequest.setCharacterEncoding(encoding);
	        servletResponse.setContentType("text/html;charset="+encoding);
	    }
	    filterChain.doFilter(servletRequest,servletResponse);
	}

	@Override
	//void destroy()在应用程序关闭时，由容器调用。
	public void destroy() {
	    encoding= null;
	}
}
