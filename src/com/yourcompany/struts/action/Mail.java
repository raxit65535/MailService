package com.yourcompany.struts.action;


import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;


public class Mail {
 
private String to;

private String from;

private String message;

private String subject;

private String smtpServ;

 
   public String getTo() {
        return to;
    }

  

  public void setTo(String to) {
        this.to = to;
    }

  

  public String getFrom() {
        return from;
    }

  

  public void setFrom(String from) {
        this.from = from;
    }

  

  public String getMessage() {
        return message;
    }

  

  public void setMessage(String message) {
        this.message = message;
    }

 

   public String getSubject() {
        return subject;
    }

   

 public void setSubject(String subject) {
        this.subject = subject;
    }

   

 public String getSmtpServ() {
        return smtpServ;
    }

    

public void setSmtpServ(String smtpServ) {
        this.smtpServ = smtpServ;
    }

 

   public int sendMail(){
     
   try
      
  {
  
          Properties props = System.getProperties();
 
             
              props.put("mail.transport.protocol", "smtp");
              props.put("mail.smtp.starttls.enable","true");
              props.put("mail.smtp.host",smtpServ);
              props.put("mail.smtp.auth", "true");
              SMTPAuthenticator auth = new SMTPAuthenticator();
              Session session = Session.getInstance(props, auth);
 
           
  Message msg = new MimeMessage(session);
 
              msg.setFrom(new InternetAddress(from));
              msg.setRecipients(Message.RecipientType.TO,InternetAddress.parse(to, true));
              
          
              msg.setSubject(subject);     
  msg.setText(message);
        
   msg.setHeader("MyMail", "Java Mail Test");
              msg.setSentDate(new Date());    
     
    Transport.send(msg);
   System.out.println("Message sent to"+to+" OK.");
       
       return 0;
       
 }
       

 catch (Exception ex)
     
   {
          ex.printStackTrace();
 
         System.out.println("Exception "+ex);
 
         return -1;
      
  }
 
 }
    
     
 public class SMTPAuthenticator extends javax.mail.Authenticator {
      

        
        @Override
        public PasswordAuthentication getPasswordAuthentication() {
  
          String username = "29helishah@gmail.com";
   
         String password = "iluvlallu";
      
      return new PasswordAuthentication(username, password);
        }
 
 }

}
