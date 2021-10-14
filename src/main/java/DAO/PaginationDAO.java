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
import Bean.examinationquestion;
import Bean.vocabulary;



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
			 Integer checktable = rs.getInt("checktable");
			
		ex.setIdexamination(idexamination);
			ex.setIdexamination(idexamination);
			ex.setExaminationname(examinationname);
			ex.setExaminationimage(examinationimage);
		ex.setChecktable(checktable);
		
			
		 list.add(ex);
			
			}
			ptmt.close();
			rs.close();
			
			
			
		} catch (SQLException e) {
			request.setAttribute("error", e.getMessage());
		}	
		return list ;
	}
	
	
	public static List<vocabulary> selectVocabulary (int start, int count ,Connection conn,HttpServletRequest request){
		 
		List<vocabulary> list = new ArrayList<vocabulary>();
		
		try {
			
			PreparedStatement ptmt = null;
			String sql = "select * from vocabulary limit "+start+","+count+"";
			ptmt = conn.prepareStatement(sql);
			
			
			ResultSet rs = ptmt.executeQuery();
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
			ptmt.close();
			rs.close();
			
			
			
		} catch (SQLException e) {
			request.setAttribute("error", e.getMessage());
		}	
		return list ;
	}
	
	
	
	
	
	
	
	
	/*

public static void InsertDataFromExcel(HttpServletRequest request,examinationquestion ex,Connection conn)
{
	
	
	
	String sql = "insert into account(idexaminationquestion,imagequestion,audio,audiomp3,paragraph,question,option1,option2,option3,option4,correctanswser,num,examinationid) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
	try 
	{
		PreparedStatement ptmt = conn.prepareStatement(sql);
		ex.getIdexaminationquestion();
		
		ptmt.setInt(1,ex.getIdexaminationquestion());
		ptmt.setString(2,ex.getImagequestion());
		ptmt.setString(3,ex.getAudio());
		ptmt.setString(4,ex.getAudiomp3());
		ptmt.setString(5,ex.getParagraph());
		ptmt.setString(6,ex.getQuestion());
		ptmt.setString(7,ex.getOption1());
		ptmt.setString(8,ex.getOption2());
		ptmt.setString(9,ex.getOption3());
		ptmt.setString(10,ex.getOption4());
		ptmt.setString(11,ex.getCorrectanswser());
		ptmt.setInt(12,ex.getNum());
		ptmt.setInt(13,ex.getExaminationid());
		

		
		int kt = ptmt.executeUpdate();
		
		if (kt!=0)
		{
			request.setAttribute("message","Insert data from excel to mysql  success");
		}
		else 
		{
			request.setAttribute("message","Insert data from excel to mysql  failed");
		}
		
		ptmt.close();
		conn.close();
		
	} 
	catch (SQLException e) 
	{				
		request.setAttribute("message",e.getMessage());
	}
}
	*/
	
	
	
	
	
	
}
