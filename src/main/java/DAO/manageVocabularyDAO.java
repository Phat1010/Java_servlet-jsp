package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import Bean.examination;
import Bean.vocabulary;

public class manageVocabularyDAO {
	public static   boolean InsertVocabulary(HttpServletRequest request, Connection conn, vocabulary vocabulary) {
		PreparedStatement ptmt = null;
		
		String sql  = "insert into vocabulary(vocabularyname,checktable) value (?,?)";
		try {
			ptmt = conn.prepareStatement(sql);
		
			String title = vocabulary.getVocabularyname();
			
		
		
			
			
			ptmt.setString(1, title);
			ptmt.setInt(2, 0);
		
			
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
	
	public static   boolean UpdateVocabulary(HttpServletRequest request, Connection conn, vocabulary vocabulary , int id) {
		PreparedStatement ptmt = null;
		
		String sql  = "update vocabulary set vocabularyimage='"+vocabulary.getVocabularyimage()+"' where idvocabulary="+ id+" ";
		try {
			ptmt = conn.prepareStatement(sql);
		
	
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
	
	public static List<vocabulary> listVocabulary (HttpServletRequest request ,Connection conn){
		 
		List<vocabulary> list = new ArrayList<vocabulary>();
		
		try {
			
			PreparedStatement ptmt = null;
			String sql = "select * from vocabulary";
			ptmt = conn.prepareStatement(sql);
			
			
			ResultSet rs = ptmt.executeQuery();
			if(rs.isBeforeFirst()) {//have data
				while(rs.next()) {
				vocabulary ex= new vocabulary();
					 Integer idvocabulary = rs.getInt("idvocabulary");
					 String vocabularyname = rs.getString("vocabularyname");
					 String vocabularyimage= rs.getString("vocabularyimage");
					 Integer checktable = rs.getInt("checktable");
					 
				ex.setIdvocabulary(idvocabulary);
					
					ex.setVocabularyname(vocabularyname);
					ex.setVocabularyimage(vocabularyimage);
				ex.setChecktable(checktable);
				
					
				
					 list.add(ex);
			}
			
			
			
			}
			else {
				request.setAttribute("msggrammer", "There are no tutorials");
			}
			
			ptmt.close();
			rs.close();
			
			//co toi thieu 1 hang
			
		} catch (SQLException e) { //ko co hang nao
			request.setAttribute("msggrammer", e.getMessage());
			//
		}	
		return list ;
}
	

	
	
	public static   boolean deleteVocabulary(HttpServletRequest request, Connection conn, int id) {
		PreparedStatement ptmt = null;
		
		String sql  = "delete from vocabulary where idvocabulary = "+id+"";
		try {
			ptmt = conn.prepareStatement(sql);
		
			
			
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
	
	
	
	public static   boolean deleteVocabularyDetails(HttpServletRequest request, Connection conn, int id) {
		PreparedStatement ptmt = null;
		
		String sql  = "delete from vocabularydetails where idvocabulary = "+id+"";
		try {
			ptmt = conn.prepareStatement(sql);
		
			
			
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
