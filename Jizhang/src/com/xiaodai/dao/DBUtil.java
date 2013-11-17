package com.xiaodai.dao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import com.xiaodai.bean.UserBean;

public class DBUtil {
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
	
	public static boolean checkLogin(String username,String password){
		connect();
		String sql = "select * from User where username = ? and userpassword = ?";
		ResultSet rs = null;
		PreparedStatement st = null;
		try {
			st = (PreparedStatement) conn.prepareStatement(sql);
			
			st.setString(1, username);
			st.setString(2, password);
			rs = st.executeQuery();

			if(rs.next()){
				
				return true;
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			close();
		}
			return false;
	}
	public static boolean isUserExists(String username){
		connect();
		String sql = "select * from User where username = ?";
		ResultSet rs = null;
		PreparedStatement st = null;
		try {
			st = (PreparedStatement) conn.prepareStatement(sql);
			
			st.setString(1, username);
			rs = st.executeQuery();

			if(rs.next()){
				
				return true;
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			close();
		}
			return false;
	}
	public static boolean isUserEmailExists(String email){
		connect();
		String sql = "select * from User where useremail = ?";
		ResultSet rs = null;
		PreparedStatement st = null;
		try {
			st = (PreparedStatement) conn.prepareStatement(sql);
			
			st.setString(1, email);
			rs = st.executeQuery();

			if(rs.next()){
				
				return true;
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			close();
		}
			return false;
	}
	public static boolean isUserPhoneExists(String userphone){
		connect();
		String sql = "select * from User where userphone = ?";
		ResultSet rs = null;
		PreparedStatement st = null;
		try {
			st = (PreparedStatement) conn.prepareStatement(sql);
			
			st.setString(1, userphone);
			rs = st.executeQuery();

			if(rs.next()){
				
				return true;
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			close();
		}
			return false;
	}
	public static void insert(UserBean user){
		connect();
		String sql = "insert into User (username,userpassword,useremail,userphone) values(?,?,?,?)";
		PreparedStatement st = null;
		try {
			st = (PreparedStatement) conn.prepareStatement(sql);
			st.setString(1, user.getUsername());
			st.setString(2, user.getPassword());
			if(user.getEmail().equals("")){
				st.setString(3, null);
			}else{
				st.setString(3, user.getEmail());
			}
			if(user.getPhone()==0){
				st.setString(4,null);
			}else{
				st.setInt(4,user.getPhone());
			}

			st.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			close();
		}
		
	}
}
