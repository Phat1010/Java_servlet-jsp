package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


import Bean.examination;

public class ExaminationDAO {
	public static List<examination> listExam (HttpServletRequest request ,Connection conn){
		 
		List<examination> list = new ArrayList<examination>();
		
		try {
			
			PreparedStatement ptmt = null;
			String sql = "select * from examination";
			ptmt = conn.prepareStatement(sql);
			
			
			ResultSet rs = ptmt.executeQuery();
			if(rs.isBeforeFirst()) {//have data
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
			
			
			
			}
			else {
				request.setAttribute("msglistexam", "There are no tutorials");
			}
			
			ptmt.close();
			rs.close();
			
			//co toi thieu 1 hang
			
		} catch (SQLException e) { //ko co hang nao
			request.setAttribute("msglistexam", e.getMessage());
			//
		}	
		return list ;
}
	
	
}
