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
import Bean.vocabularydetails;

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
	
	public static List<vocabularydetails> listVocabularydetails (HttpServletRequest request ,Connection conn, int idvocab){
		 
		List<vocabularydetails> list = new ArrayList<vocabularydetails>();
		
		try {
			
			PreparedStatement ptmt = null;
			String sql = "select * from vocabularydetails where idvocabulary= "+idvocab+"";
			ptmt = conn.prepareStatement(sql);
			
			
			ResultSet rs = ptmt.executeQuery();
			if(rs.isBeforeFirst()) {//have data
				while(rs.next()) {
				vocabularydetails ex= new vocabularydetails();
					 Integer idvocabularydetails = rs.getInt("idvocabularydetails");
					 Integer num = rs.getInt("num");
					 String vocabularydetailsname = rs.getString("vocabularydetailsname");
		
					 String transcribe= rs.getString("transcribe");
					 String image= rs.getString("image");
					 String audiomp3= rs.getString("audiomp3");
					 String audioogg= rs.getString("audioogg");
					 String mean= rs.getString("mean");
					 Integer idvocabulary = rs.getInt("idvocabulary");
					
					 ex.setIdvocabularydetails(idvocabularydetails);
					 ex.setNum(num);
					 ex.setVocabularydetailsname(vocabularydetailsname);
					 ex.setTranscribe(transcribe);
					 ex.setImage(image);
					 ex.setAudiomp3(audiomp3);
					 ex.setAudioogg(audioogg);
					 ex.setMean(mean);
					 ex.setIdvocabulary(idvocab);
					 
				
					
				
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
