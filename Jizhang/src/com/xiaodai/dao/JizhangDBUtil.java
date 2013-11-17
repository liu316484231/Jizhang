package com.xiaodai.dao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.xiaodai.bean.UserBean;
import com.xiaodai.bean.UserJizhangBean;

public class JizhangDBUtil {
	private static String driver = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://www.xiaodai800.com:3306/xiaodai800";
	private static String username = "xiaodai_root";
	private static String password = "q1w2e3r4t5y6";
	private static Connection conn = null;
	private static void connect() {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			conn = (Connection) DriverManager.getConnection(url,username,password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	private static void close(){
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	public static void insert(UserJizhangBean form){
		

	}
}