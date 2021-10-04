package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import Bean.GrammarGuide;

public class CheckedDataDAO {
	public static   boolean Checked(HttpServletRequest request, Connection conn, int id) {
		PreparedStatement ptmt = null;
		
		String sql  = "update examination set checktable=1 where idexamination="+ id+" ";
		try {
			ptmt = conn.prepareStatement(sql);
		
		/*	String title = grammarGuide.getGrammarguidename();
			String img = grammarGuide.getGrammarguideimage();
			String content =grammarGuide.getContent();
		
			
			
			ptmt.setString(1, title);
			ptmt.setString(2, img);
			ptmt.setString(3, content);*/
			
			int kt = ptmt.executeUpdate();
			if(kt!=0)
			{
				return true;
			}
			ptmt.close();
			
		} catch (SQLException e) {
			request.setAttribute("msgupdate",e.getMessage());
		}
		return false;
	}
	
	
	
				
		
}
