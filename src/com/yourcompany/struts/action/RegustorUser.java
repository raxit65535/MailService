package com.yourcompany.struts.action;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;
import java.math.BigInteger;

public class RegustorUser {

	static int status=0;
	public static int register(String name,String surname,String email,String altemail,String password,String conformpassword){
		//public static int register(String email,String password,String gender,String country,String name){

	       String alphaNumerics = "qwertyuiopasdfghjklzxcvbnm1234567890";
	       String random = "";
	       for (int i = 0; i < 8; i++) {
	           random += alphaNumerics.charAt((int) (Math.random() * alphaNumerics.length()));
	       }
		Connection con=GetCon.getCon();
		PreparedStatement ps;
		//String sql="Insert into mailuser values(?,?,?,?,?)";
		try {
			ps = con.prepareStatement("Insert into mailuser(name,surname,email,altemail,password,conformpassword,random) values(?,?,?,?,?,?,?)");
			ps.setString(1,name);
			ps.setString(2,surname);
			ps.setString(3,email);
			ps.setString(4, altemail);
			ps.setString(5,password);
			ps.setString(6,conformpassword);
			ps.setString(7, random);
			
			//ps.setString(6,country);
			
			status=ps.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return status;
		
	}
	
}
