package com.user;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.vendor.DBConnection;

public class user_db_util {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insert_user(String name,String phone,String address,String email,String password) {
		
		boolean isSuccess = false;

		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "insert into user values (0,'" + name + "','" + phone + "','" + address + "','"+ email + "','"+password+"')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;

			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
		
		
	}
	
	public static List<user> get_user(String user_name) {

		ArrayList<user> user_data = new ArrayList<>();
		

		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "select * from user where user_email='" + user_name + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {

				String name = rs.getString(2);
				String phone = rs.getString(3);
				String address = rs.getString(4);
				String email = rs.getString(5);
				String password = rs.getString(6);

				user newuser = new user(name, phone, address, email,password);
				//int p = 0712345678;
				//user n = new user("kamal","safd","kottawa","kamal@gmail.com","1234");
				user_data.add(newuser);
				
				//System.out.println("all data user"+newuser.getName());

				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		

		return user_data;
	}
	
	
	public static boolean update_user(String name,String phone,String address,String email,String password) {
		
		boolean isSuccess = false;

		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "update user set user_name='" + name + "',user_phone='" + phone + "',user_address='" + address + "',user_password='"+password+"'"+"where user_email='"+email+"'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;

			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
		
		
	}
	
	public static boolean delete_user(String sId) {

		boolean status = false;

		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "DELETE FROM user WHERE user_email = '" + sId + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				status = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

}
