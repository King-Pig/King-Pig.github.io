package com.spark.bsel.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.spark.bsel.dao.StationDao;

/**
 * Servlet implementation class ManagerLoginServlet
 */
@WebServlet("/ManagerLogin")
public class ManagerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username==null) username="";
		if(password==null) password="";
		StationDao sd = new StationDao();
		Map<String,Object>  u  = sd.queryUser(username, password);
 
		if(u!= null &&u.size()>0){
			HttpSession session = request.getSession();
			session.setAttribute("manager", "admin");
			response.sendRedirect("./pages/index.jsp"); 
		}else{
			response.sendRedirect("./pages/login.jsp?s=failed"); 
		}

       
		
                                           // 使用RequestDispatcher对象在服务器端向目的路径跳转
	}

}
