package com.user;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.jdbc.Connection;
import com.vendor.DBConnection;

public class user_login_db_util {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insert_user_login(String email,String password) {
		
		boolean isSuccess = false;
		String user_role = "user";

		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "insert into login values ('"+ email + "','"+password+"','"+user_role+"')";
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
	
	public static boolean update_user_login(String email,String password) {
		
		boolean isSuccess = false;

		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "update login set user_pwd='" + password + "' "+"where user_email='" + email + "'";
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
	
	public static boolean delete_user_login(String user_email) {

		boolean status = false;

		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "DELETE FROM login WHERE user_email = '" + user_email + "'";
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
