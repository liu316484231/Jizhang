package com.xiaodai.dao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
		connect();
		String sql = "insert into UserJizhang (username,websitename,account,date,money,interestrate,bonusrate,managementrate,durationmonths,durationdays,repaymentmode,status,comment) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement st = null;
		try {
			st = (PreparedStatement) conn.prepareStatement(sql);
			st.setString(1,form.getUsername() );
			st.setString(2,form.getWebsitename() );
			st.setString(3, form.getAccount());
			st.setDate(4,form.getDate());
			st.setInt(5, form.getMoney());
			st.setDouble(6, form.getInterest());
			st.setDouble(7, form.getBonus());
			st.setDouble(8, form.getManagement());
			st.setInt(9, form.getDurationmonths());
			st.setInt(10, form.getDurationdays());
			st.setString(11, form.getRepaymentmode());
			st.setString(12, form.getStatus());
			st.setString(13, form.getComment());
			
			
			
			

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
	public static ArrayList <UserJizhangBean> showUserJizhang(String username){
		connect();
		String sql = "select * from UserJizhang where username = ?";
		PreparedStatement st = null;
		ResultSet rs = null;
		List <UserJizhangBean> list = new ArrayList();
		
		try {
			
			st = (PreparedStatement) conn.prepareStatement(sql);
			st.setString(1, username);
			rs = st.executeQuery();
			while(rs.next()){
				UserJizhangBean entry = new UserJizhangBean();
				entry.setId(rs.getInt(1));
				entry.setUsername(username);
				entry.setWebsitename(rs.getString(3));
				entry.setAccount(rs.getString(4));
				entry.setDate(rs.getDate(5));
				entry.setMoney(rs.getInt(6));
				entry.setInterest(rs.getDouble(7));
				entry.setBonus(rs.getDouble(8));
				entry.setManagement(rs.getDouble(9));
				entry.setDurationmonths(rs.getInt(10));
				entry.setDurationdays(rs.getInt(11));
				entry.setRepaymentmode(rs.getString(12));
				entry.setStatus(rs.getString(13));
				entry.setComment(rs.getString(14));
				list.add(entry);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		close();
		return (ArrayList<UserJizhangBean>) list;
	}
	public static void delete(int id){
		connect();
		String sql = "delete from UserJizhang where id = ?";
		PreparedStatement st = null;
		try {
			st = (PreparedStatement) conn.prepareStatement(sql);
			st.setInt(1,id );
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
