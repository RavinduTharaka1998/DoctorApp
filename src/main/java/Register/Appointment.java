package Register;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Appointment {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs = null;
		
	
	
//Insert
 public static boolean insertAppointment(String name,String phone,String mail,String address,String gender,String bloodgroup,String doctorname,String date)
 {
	 boolean isSuccess = false;
		 
		 try
		 {
			 System.out.println("name : "+name);
			 System.out.println("name : "+phone);
			 System.out.println("name : "+mail);
			 System.out.println("name : "+address);
			 System.out.println("name : "+gender);
			 System.out.println("name : "+bloodgroup);
			 System.out.println("name : "+doctorname);
			 System.out.println("date : "+date);
			 Connection con = connectionDB.getConnection();
			 Statement stat = con.createStatement();
			 String sql = "insert into medical.appointment values (0,'"+name+"','"+phone+"','"+mail+"','"+address+"','"+gender+"','"+bloodgroup+"','"+doctorname+"','"+date+"')";
			 int rs = stat.executeUpdate(sql);
			 
			 if(rs > 0)
			 {
				 isSuccess = true;
			 }
			 else
			 {
				 isSuccess = false;
			 }
			 
			 
		 }
		 catch(Exception e)
		 {
			e.printStackTrace(); 
		 }
	 
	 return isSuccess;
 }
 
 //Update
 public static boolean updateAppointment(String id,String name,String phone,String mail,String address,String gender,String bloodgroup,String doctorname,String date)
 { 
	 try
	 {
		 Connection con = connectionDB.getConnection();
		 Statement stat = con.createStatement();
		 String sql = "update medical.appointment set name='"+name+"',phone='"+phone+"',mail='"+mail+"',address='"+address+"',gender='"+gender+"',bloodgroup='"+bloodgroup+"',doctorname='"+doctorname+"',date='"+date+"'"
				 	+"where id='"+id+"'";
		 int rs = stat.executeUpdate(sql);
		 
		 if(rs > 0)
		 {
			 isSuccess = true;
		 }
		 else
		 {
			 isSuccess = false;
		 }
		 
		 
	 }
	 catch(Exception e)
	 {
		e.printStackTrace(); 
	 }
	 
	 
	 return isSuccess;
 }
 
 
 //Delete 
 public static boolean deleteAppointment(String id)
 { 
	 System.out.println("id="+id);
	 
	 try
	 {
		 Connection con = connectionDB.getConnection();
		 Statement stat = con.createStatement();
		 String sql = "delete from medical.appointment where id='"+id+"'";
		 int rs = stat.executeUpdate(sql);
		 
		 if(rs > 0)
		 {
			 isSuccess = true;
		 }
		 else
		 {
			 isSuccess = false;
		 }
		 
		 
	 }
	 catch(Exception e)
	 {
		e.printStackTrace(); 
	 }
	 
	 
	 return isSuccess;
 }


 
 }


