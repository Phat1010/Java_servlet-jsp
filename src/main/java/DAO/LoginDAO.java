package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
}
