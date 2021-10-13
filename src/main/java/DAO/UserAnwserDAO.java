package DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import Bean.account;
import Bean.result;

public class UserAnwserDAO {
	public static   boolean InsertAnswerUser(HttpServletRequest request,int idexamination, String username, Connection conn, result re) {
		PreparedStatement ptmt = null;
		
		String sql  = "insert into result(correctanswer,incorrectanswer,times,username,idexamination) value (?,?,?,?,?)";
		try {
			ptmt = conn.prepareStatement(sql);
		
			int correctanswer = re.getCorrectanswer();
			int incorrectanswer = re.getIncorrectanswer();
			String times = re.getTimes();
			
			
			
			
			
			
					
			
			ptmt.setInt(1, correctanswer);
			ptmt.setInt(2, incorrectanswer);
			ptmt.setString(3, times);
			ptmt.setString(4, username);
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
	
	
	public static String correctAnswer (Connection conn,int idexaminationquestion){
		 
		String correct="";
			
			try {
				
				PreparedStatement ptmt = null;
				String sql = "select correctanswser from examinationquestion where idexaminationquestion="+idexaminationquestion+"";
				ptmt = conn.prepareStatement(sql);
				
				
				ResultSet rs = ptmt.executeQuery();
				while(rs.next()) {
				
					correct = rs.getString(1);
					 
				
				}
				ptmt.close();
				rs.close();
				
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			return correct ;
		}
}
