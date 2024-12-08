package com.event_planning;

import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;

import com.mysql.jdbc.Connection;

import servlet.login_db;

public class login_db_util {
	
	private static boolean issuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static String set_role;
	
	public static boolean validate(String username,String password){
		
		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select user_email,user_pwd,user_role from login where user_email ='"+username+"'and user_pwd='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				
				String get_role = rs.getString("user_role");
				set_role=get_role;
				
				issuccess = true;
			}
			else {
				issuccess = false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return issuccess;
	}
	
	public static String login_role() {
		
		String role=set_role;
		
		return role;
		
	}
	

}
