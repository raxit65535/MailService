package com.yourcompany.struts.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;

public class Reset {

	static int status=0;
	public static int reset(String newpass,String conformpass,String _code){
		//public static int register(String email,String password,String gender,String country,String name){

		Connection con=GetCon.getCon();
		PreparedStatement ps;
		//String sql="Insert into mailuser values(?,?,?,?,?)";
	   
		try {
			ps = con.prepareStatement("UPDATE mailuser set password = ? , conformpassword = ? WHERE random = ?");
			//ps.setString(1,name);
			//ps.setString(2,surname);
			//ps.setString(3,email);
			//ps.setString(4, altemail);
			ps.setString(1,newpass);
			ps.setString(2,conformpass);
			ps.setString(3, _code);
			
			//ps.setString(6,country);
			
			status=ps.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return status;
		
	}
	
}
