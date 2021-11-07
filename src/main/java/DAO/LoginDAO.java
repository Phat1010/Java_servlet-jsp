package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.servlet.http.HttpServletRequest;

import Bean.account;

public class LoginDAO {
	public static   boolean InsertAccount(HttpServletRequest request, Connection conn, account account) {
		PreparedStatement ptmt = null;
		
		String sql  = "insert into account(username,email,password,accountcategory) value (?,?,?,?)";
		try {
			ptmt = conn.prepareStatement(sql);
		
			String username = account.getUsername();
			String email = account.getEmail();
			String passoword = account.getPassword();
			int accountcategory = 1;
			
			ptmt.setString(1, username);
			ptmt.setString(2, email);
			ptmt.setString(3, passoword);
			ptmt.setInt(4, accountcategory);
			
			int kt = ptmt.executeUpdate();
			if(kt!=0)
			{
				return true;
			}
			ptmt.close();
			
		} catch (SQLException e) {
			request.setAttribute("msgregister",e.getMessage());
		}
		return false;
	}
	
	
	
	
	
	
	
	
	
	public static boolean checkaccount (String account, Connection conn,HttpServletRequest request){
		 
	
		
		try {
			
			PreparedStatement ptmt = null;
			String sql = "select * from account";
			ptmt = conn.prepareStatement(sql);
			
			
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()) {
			
		
				 String nameaccount= rs.getString("username");
				 if(account.equals(nameaccount) )
				 {
					 return false;
				 }
				
				
				
			
			}
			ptmt.close();
			rs.close();
			
			
			
			
			
		} catch (SQLException e) {
			request.setAttribute("error", e.getMessage());
		}	
		return true ;
	}
	
	
	
	
	
	public static int checkaccountlogin (String account,String password, Connection conn,HttpServletRequest request){
		 
	
		
		try {
			
			PreparedStatement ptmt = null;
			String sql = "select * from account";
			ptmt = conn.prepareStatement(sql);
			
			
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()) {
			
		
				 String nameaccount= rs.getString("username");
				 String passaccount= rs.getString("password");
				 String accountcategory = rs.getString("accountcategory");
				 if(account.equals(nameaccount) && password.equals(passaccount)&&accountcategory.equals("1"))
				 {
					 return 1;
				 }
				 if(account.equals(nameaccount) && password.equals(passaccount)&&accountcategory.equals("2"))
				 {
					 return 2;
				 }
				
				
				
			
			}
			ptmt.close();
			rs.close();
			
			
			
			
			
		} catch (SQLException e) {
			request.setAttribute("error", e.getMessage());
		}	
		return 0 ;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
