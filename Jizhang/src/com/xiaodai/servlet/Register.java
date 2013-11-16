package com.xiaodai.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xiaodai.dao.DBUtil;

import coml.xiaodai.bean.UserBean;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("id");
		String userpwd = request.getParameter("pwd");
		String useremail = request.getParameter("email");
		String userphone = request.getParameter("phone");
		int phonenum;
		if(userphone.trim().equals("")){
			phonenum = 0;
		}else{
			phonenum = Integer.parseInt(userphone);
		}
		if(DBUtil.isUserExists(userid)){
			response.getWriter().write("username exits");
			return;
		}
//		if(DBUtil.isUserExists(useremail)){
//			response.getWriter().write("useremail exits");
//			return;
//		}
//		if(DBUtil.isUserPhoneExists(userphone)){
//			response.getWriter().write("userphone exits");
//			return;
//		}
		UserBean user = new UserBean();
		user.setUsername(userid);
		user.setPassword(userpwd);
		user.setEmail(useremail);
		user.setPhone(phonenum);
		DBUtil.insert(user);
		request.getSession().setAttribute("name", userid);
		//response.getWriter().write("register successfully.wait for skip..");
		response.sendRedirect("/Jizhang/tiaozhuan.html");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

}
