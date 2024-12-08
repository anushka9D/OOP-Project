package com.service;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.vendor.DBConnection;
import com.vendor.vendor;

public class services_db_util {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean insert_service(String name, String description, String participants, String events) {

		boolean isSuccess = false;

		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "insert into service values (0,'" + name + "','" + description + "','" + participants + "','"
					+ events + "')";
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

	public static boolean deleteServices(String sId) {

		boolean status = false;

		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "DELETE FROM service WHERE id = '" + sId + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				status = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public static List<services> serviceUpdateRead(String sId) {

		ArrayList<services> ser = new ArrayList<>();

		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "select * from service where id='" + sId + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {

				String id = rs.getString(1);
				String name = rs.getString(2);
				String description = rs.getString(3);
				String participants = rs.getString(4);
				String events = rs.getString(5);

				services se = new services(id, name, description, participants, events);
				ser.add(se);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ser;
	}

	public static boolean update_service(String id, String name, String description, String participants,
			String events) {

		boolean isSuccess = false;

		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "update service set s_name='" + name + "',s_description='" + description
					+ "',category_participants='" + participants + "',category_events='" + events + "'" + "where id='"
					+ id + "'";
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

}
