package com.yourcompany.struts.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RepeatUser {

	
	public static boolean checkAvailability(String _email){
		boolean raxit = false;
		String v="";
		Connection con=GetCon.getCon();
		try {
			//PreparedStatement ps=con.prepareStatement("Select * from MAILCASTINGUSER where EMAILADD = ? and PASSWORD =?");
			PreparedStatement ps=con.prepareStatement("Select email from mailuser ");
			
			//ps.setString(1,email);
			//ps.setString(2,password);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				 v = rs.getString(4);
				if(v == _email)
				{
					raxit = false;
				}
				
			}
		//	status=rs.next();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return raxit;
	}

	
}
