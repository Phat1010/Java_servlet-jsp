package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import Bean.GrammarGuide;
import Bean.account;
import Bean.examinationquestion;



public class practiceExamDAO {
	public static List<examinationquestion> DisplayQuiz(Connection conn, int id,int start, int count ,HttpServletRequest request){
		List<examinationquestion> list = new ArrayList<examinationquestion>();
		String sql= "select * from examinationquestion where examinationid="+id+" limit "+start+","+count+"";
		
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()) {
				examinationquestion incomplete = new examinationquestion();
				int idexaminationquestion = rs.getInt("idexaminationquestion");
				int num = rs.getInt("num");
				String imagequestion = rs.getString("imagequestion");
			
				
				String audio = rs.getString("audio");
				String audiomp3 = rs.getString("audiomp3");
				String paragraph = rs.getString("paragraph");
				String question = rs.getString("question");
				String option1 = rs.getString("option1");
				String option2 = rs.getString("option2");
				String option3 = rs.getString("option3");
				String option4 = rs.getString("option4");
				
				String correctanswser = rs.getString("correctanswser");
				int examinationid = rs.getInt("examinationid");
				
				incomplete.setIdexaminationquestion(idexaminationquestion);
				incomplete.setNum(num);
				incomplete.setImagequestion(imagequestion);
				incomplete.setAudio	(audio);
				incomplete.setAudiomp3(audiomp3);
				incomplete.setParagraph(paragraph);
				incomplete.setQuestion(question);
				incomplete.setOption1(option1);
				incomplete.setOption2(option2);
				incomplete.setOption3(option3);
				incomplete.setOption4(option4);
				incomplete.setCorrectanswser(correctanswser);
				incomplete.setExaminationid(examinationid);
				
				list.add(incomplete);
				
			
			}
			
			
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return list;
	}
	/*
	public static List<Incompletesentence> GetCorrectanswer(Connection conn){
		List<Incompletesentence> list = new ArrayList<Incompletesentence>();
		String sql= "select * from incompletesentences";
		
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()) {
				Incompletesentence incomplete = new Incompletesentence();
				int num = rs.getInt("number");
				String question = rs.getString("question");
				String correctanswer = rs.getString("correctanswer");
				String option1 = rs.getString("option1");
				String option2 = rs.getString("option2");
				String option3 = rs.getString("option3");
				String option4 = rs.getString("option4");
			
				incomplete.setNumber(num);
				incomplete.setQuestion(question);
				incomplete.setOption1(option1);
				incomplete.setOption2(option2);
				incomplete.setOption3(option3);
				incomplete.setOption4(option4);
				incomplete.setCorrectanser(correctanswer);
				
				list.add(incomplete);
				
			
			}
			
			
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return list;
	}
	*/
	
	public static int getCountrow(Connection conn, int id) {
		int count = 0;
		String sql= "select count(*) from examinationquestion where examinationid="+id+"";
		
		
			try {
				PreparedStatement ptmt = conn.prepareStatement(sql);
				ResultSet rs = ptmt.executeQuery();
				rs.next();
				count = rs.getInt(1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			
			
			return count;

}
	
	
	
	
	
	public static List<examinationquestion> DisplayQuizAnswer(Connection conn, int id, HttpServletRequest request){
		List<examinationquestion> list = new ArrayList<examinationquestion>();
		String sql= "select * from examinationquestion where examinationid="+id+" ";
		
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()) {
				examinationquestion incomplete = new examinationquestion();
				int idexaminationquestion = rs.getInt("idexaminationquestion");
				int num = rs.getInt("num");
				String imagequestion = rs.getString("imagequestion");
			
				
				String audio = rs.getString("audio");
				String audiomp3 = rs.getString("audiomp3");
				String paragraph = rs.getString("paragraph");
				String question = rs.getString("question");
				String option1 = rs.getString("option1");
				String option2 = rs.getString("option2");
				String option3 = rs.getString("option3");
				String option4 = rs.getString("option4");
				
				String correctanswser = rs.getString("correctanswser");
				int examinationid = rs.getInt("examinationid");
				String examinationquestionexplain = rs.getString("examinationquestionexplain");
				
				incomplete.setIdexaminationquestion(idexaminationquestion);
				incomplete.setNum(num);
				incomplete.setImagequestion(imagequestion);
				incomplete.setAudio	(audio);
				incomplete.setAudiomp3(audiomp3);
				incomplete.setParagraph(paragraph);
				incomplete.setQuestion(question);
				incomplete.setOption1(option1);
				incomplete.setOption2(option2);
				incomplete.setOption3(option3);
				incomplete.setOption4(option4);
				incomplete.setCorrectanswser(correctanswser);
				incomplete.setExaminationid(examinationid);
				incomplete.setExaminationquestionexplain(examinationquestionexplain);
		
				
				list.add(incomplete);
				
			
			}
	
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return list;
	}
	
	
	
	
	public static int head(Connection conn, int id) {
		int count = 0;
		String sql= "select  idexaminationquestion from examinationquestion where examinationid="+id+"";
		
		
			try {
				PreparedStatement ptmt = conn.prepareStatement(sql);
				ResultSet rs = ptmt.executeQuery();
				rs.next();
				count = rs.getInt(1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			
			
			return count;

}public static int last(Connection conn, int id) {
	int count = 0;
	String sql= "SELECT idexaminationquestion FROM examinationquestion where examinationid="+id+" ORDER BY idexaminationquestion DESC";
	
	
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			rs.next();
			count = rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		return count;

}


	
}
