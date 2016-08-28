package com.yourcompany.struts.action;

import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class SendMessage {
	static int status=0;
	//static int d=1;
	
	
	public static int sendMsg(String sender,String receiver,String subject,String msg ){
		Connection con=GetCon.getCon();
		//Date a = new Date(); 
		//SimpleDateFormat sfd = new SimpleDateFormat("DD:MM:YYYY  HH:mm;ss");
		
		 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
         java.util.Date date = new java.util.Date();
         String dat=dateFormat.format(date);
         String _flag = "0";
         //sdat+="*";
		
		
		//java.util.Date sqdate=Calendar.getInstance().getTime();
		//java.sql.Date dat =new java.sql.Date(sqdate.getTime());
		//String datee = dat.toString();
		try {
			PreparedStatement ps=con.prepareStatement("Insert into inbox28(sender,receiver,subject,message,flag,date) values(?,?,?,?,?,?)");
			ps.setString(1,sender);
			ps.setString(2,receiver);
			ps.setString(3,subject);
			ps.setString(4,msg);
			ps.setString(5, _flag);
			ps.setString(6, dat);
			//ps.setDate(5,dat);
			//ps.setInt(1,d);
			
			
			status=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
}
