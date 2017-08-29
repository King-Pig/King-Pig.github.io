<%@ page language="java" contentType="text/html; charset=utf-8"     pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	String admin =(String) request.getSession().getAttribute("manager");
	if(admin == null)admin="";
	if(!"admin".equals(admin)){
		out.print("<html><script> window.location.href='./pages/login.jsp';</script></html>");
	}else{
		out.print("<html><script> window.location.href='./pages/index.jsp';</script></html>");
	}
 
 
 %>
 
 