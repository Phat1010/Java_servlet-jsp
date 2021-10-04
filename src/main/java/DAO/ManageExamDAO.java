package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


import Bean.examination;

public class ManageExamDAO {
	public static   boolean InsertGrammar(HttpServletRequest request, Connection conn, examination examination) {
		PreparedStatement ptmt = null;
		
		String sql  = "insert into examination(examinationname,checktable) value (?,?)";
		try {
			ptmt = conn.prepareStatement(sql);
		
			String title = examination.getExaminationname();
			
		
		
			
			
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
	
	
	
	
	
	
	
	
	
	

	
	public static   boolean UpdateExam(HttpServletRequest request, Connection conn, examination examination , int id) {
		PreparedStatement ptmt = null;
		
		String sql  = "update examination set examinationimage='"+examination.getExaminationimage()+"' where idexamination="+ id+" ";
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
	

	
	
	public static   boolean deleteExam(HttpServletRequest request, Connection conn, int id, String table) {
		PreparedStatement ptmt = null;
		
		String sql  = "delete from "+table+" where idexamination = "+id+"";
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
