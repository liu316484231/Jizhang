package com.xiaodai.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Jizhang
 */
@WebServlet("/Jizhang")
public class Jizhang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Jizhang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = (String) request.getSession().getAttribute("name");
		String websitename = request.getParameter("website");
		String account = request.getParameter("account");
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Date date = null;
		try {
			if(!request.getParameter("date").trim().equals("")){
				date = sdf.parse(request.getParameter("date"));
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
		int money = 0;
		if(!request.getParameter("money").trim().equals("")){
			Integer.parseInt(request.getParameter("money"));
		}
		double yinterest = 0;
		if(request.getParameter("interest1").equals("month")&&!request.getParameter("interest").trim().equals("")){
			yinterest = Double.parseDouble(request.getParameter("interest"))*12;
		}else if(request.getParameter("interest1").equals("year")&&!request.getParameter("interest").trim().equals("")){
			yinterest = Double.parseDouble(request.getParameter("interest"));
		}
		double bonus = 0;
		if(!request.getParameter("bonus").trim().equals("")){
			Double.parseDouble(request.getParameter("bonus"));
		}
		double management = 0;
		if(!request.getParameter("management").trim().equals("")){
			Double.parseDouble(request.getParameter("management"));
		}
		int durationmonths = 0;
		int durationdays = 0;
		if(request.getParameter("dura").equals("month")&&!request.getParameter("duration").trim().equals("")){
			durationmonths = Integer.parseInt(request.getParameter("duration"));
		}else if(request.getParameter("dura").equals("day")&&!request.getParameter("duration").trim().equals("")){
			durationdays = Integer.parseInt(request.getParameter("duration"));
		}
		String repaymentmode = null; 
		if(request.getParameter("type").equals("1")){
			repaymentmode = "按月还款";
		}else if(request.getParameter("type").equals("2")){
			repaymentmode = "到期还款";
		}else if(request.getParameter("type").equals("3")){
			repaymentmode = "按季还款";
		}else{
			repaymentmode = "按月还息到期还本";
		}
		String status = request.getParameter("status");
		String comment = request.getParameter("comment");
		
//		System.out.println(username);
//		System.out.println(websitename);
//		System.out.println(account);
//		System.out.println(date);
//		System.out.println(money);
//		System.out.println(yinterest);
//		System.out.println(bonus);
//		System.out.println(management);
//		System.out.println(durationmonths);
//		System.out.println(durationdays);
//		System.out.println(repaymentmode);
//		System.out.println(status);
//		System.out.println(comment);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
