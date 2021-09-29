package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import Bean.GrammarGuide;
import Bean.examination;



public class PaginationDAO {
	public static List<GrammarGuide> selectGrammar (int start, int count ,String table,Connection conn,HttpServletRequest request){
		 
		List<GrammarGuide> list = new ArrayList<GrammarGuide>();
		
		try {
			
			PreparedStatement ptmt = null;
			String sql = "select * from "+ table +" limit "+start+","+count+"";
			ptmt = conn.prepareStatement(sql);
			
			
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()) {
				GrammarGuide grammarGuide = new GrammarGuide();
				int idgrammarguide = rs.getInt("idgrammarguide");
				 String grammarguidename = rs.getString("grammarguidename");
				 String grammarguideimage= rs.getString("grammarguideimage");
				 String content= rs.getString("content");
				
				 grammarGuide.setIdgrammarguide(idgrammarguide);
				 grammarGuide.setGrammarguidename(grammarguidename);
				 grammarGuide.setGrammarguideimage(grammarguideimage);
				 grammarGuide.setContent(content);
			
				 list.add(grammarGuide);
			
			}
			ptmt.close();
			rs.close();
			
			
			
		} catch (SQLException e) {
			request.setAttribute("error", e.getMessage());
		}	
		return list ;
	}
	
	
	
	
	
	
	
	
	public static List<examination> selectExam (int start, int count ,String table,Connection conn,HttpServletRequest request){
		 
		List<examination> list = new ArrayList<examination>();
		
		try {
			
			PreparedStatement ptmt = null;
			String sql = "select * from "+ table +" limit "+start+","+count+"";
			ptmt = conn.prepareStatement(sql);
			
			
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()) {
		
			examination ex= new examination();
			 Integer idexamination = rs.getInt("idexamination");
			 String examinationname = rs.getString("examinationname");
			 String examinationimage= rs.getString("examinationimage");
			
		ex.setIdexamination(idexamination);
			ex.setIdexamination(idexamination);
			ex.setExaminationname(examinationname);
			ex.setExaminationimage(examinationimage);
		
		
			
		 list.add(ex);
			
			}
			ptmt.close();
			rs.close();
			
			
			
		} catch (SQLException e) {
			request.setAttribute("error", e.getMessage());
		}	
		return list ;
	}
	
}
