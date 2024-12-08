package com.vendor;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

public class vendor_db_util {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean insert_vendor(String name, String address, String email, String phone, String type,
			String price) {

		boolean isSuccess = false;

		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "insert into vendor values (0,'" + name + "','" + address + "','" + email + "','" + phone
					+ "','" + type + "','" + price + "')";
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

	// vendor delete sql

	public static boolean deleteVendor(String venId) {

		boolean status = false;

		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "DELETE FROM vendor WHERE id='" + venId + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				status = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public static List<vendor> vedorUpdateRead(String venId) {

		ArrayList<vendor> ven = new ArrayList<>();

		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "select * from vendor where id='" + venId + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {

				String id = rs.getString(1);
				String name = rs.getString(2);
				String address = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String type = rs.getString(6);
				String price = rs.getString(7);

				vendor ve = new vendor(id, name, address, email, phone, type, price);
				ven.add(ve);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ven;
	}

	public static boolean update_vendor(String id, String name, String address, String email, String phone, String type,
			String price) {

		boolean isSuccess = false;

		try {
			con = (Connection) DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "update vendor set v_name='" + name + "',address='" + address + "',email='" + email
					+ "',phone='" + phone + "',s_type='" + type + "', price='" + price + "'" + "where id='" + id + "'";
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
