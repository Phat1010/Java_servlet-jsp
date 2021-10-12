package DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import Bean.account;
import Bean.result;

public class UserAnwserDAO {
	public static   boolean InsertAnswerUser(HttpServletRequest request,int idaccount, int idexamination, Connection conn, result re) {
		PreparedStatement ptmt = null;
		
		String sql  = "insert into result(correctanswer,incorrectanswer,times,idaccount,idexamination) value (?,?,?,?,?)";
		try {
			ptmt = conn.prepareStatement(sql);
		
			int correctanswer = re.getCorrectanswer();
			int incorrectanswer = re.getCorrectanswer();
			String times = re.getTimes();
			
			
			
			
			
			
					
			
			ptmt.setInt(1, correctanswer);
			ptmt.setInt(2, incorrectanswer);
			ptmt.setString(3, times);
			ptmt.setInt(4, idaccount);
			ptmt.setInt(5, idexamination);
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
