package DAO;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import Bean.GrammarGuide;



public class GrammarGuideManageDAO {

	public static List<GrammarGuide> grammarguide (HttpServletRequest request ,Connection conn){
		 
		List<GrammarGuide> list = new ArrayList<GrammarGuide>();
		
		try {
			
			PreparedStatement ptmt = null;
			String sql = "select * from grammarguide";
			ptmt = conn.prepareStatement(sql);
			
			
			ResultSet rs = ptmt.executeQuery();
			if(rs.isBeforeFirst()) {//have data
				while(rs.next()) {
					GrammarGuide bn = new GrammarGuide();
					 Integer idgrammarguide = rs.getInt("idgrammarguide");
					 String grammarguidename = rs.getString("grammarguidename");
					 String grammarguideimage= rs.getString("grammarguideimage");
					 String content= rs.getString("content");
					 bn.setIdgrammarguide(idgrammarguide); 
					 bn.setGrammarguidename(grammarguidename); 
					 bn.setContent(content);
					 bn.setGrammarguideimage(grammarguideimage);
				
				
					
				
					 list.add(bn);
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
	









	
	
	
	
	public static int lastgrammarguide (HttpServletRequest request ,Connection conn ,String table){
		 
		
		int idlast = 0;
		try {
			
			PreparedStatement ptmt = null;
			String sql = "select * from "+table+"";
			ptmt = conn.prepareStatement(sql);
			
			
			ResultSet rs = ptmt.executeQuery();
			if(rs.isBeforeFirst()) {//have data
				while(rs.next()) {
					
					 Integer idgrammarguide = rs.getInt(1);
					
					 idlast =idgrammarguide;
	 
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
		return idlast ;
}
	
	public static List<GrammarGuide> selectlastgrammarguide (HttpServletRequest request ,Connection conn, int id){
		 
		if(request.getCharacterEncoding()==null)
		{
			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

			
			List<GrammarGuide> list = new ArrayList<GrammarGuide>();
			
			try {
				
				PreparedStatement ptmt = null;
				String sql = "select * from grammarguide where idgrammarguide="+id+"";
				ptmt = conn.prepareStatement(sql);
				
				
				ResultSet rs = ptmt.executeQuery();
				if(rs.isBeforeFirst()) {//have data
					while(rs.next()) {
						GrammarGuide bn = new GrammarGuide();
						 Integer idgrammarguide = rs.getInt("idgrammarguide");
						 String grammarguidename = rs.getString("grammarguidename");
						 String grammarguideimage= rs.getString("grammarguideimage");
						 String content= rs.getString("content");
						 bn.setIdgrammarguide(idgrammarguide); 
						 bn.setGrammarguidename(grammarguidename); 
						 bn.setContent(content);
						 bn.setGrammarguideimage(grammarguideimage);
					
					
						
					
						 list.add(bn);
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
	
	
	
	


	public static   boolean InsertGrammar(HttpServletRequest request, Connection conn, GrammarGuide grammarGuide) {
		PreparedStatement ptmt = null;
		
		String sql  = "insert into grammarguide(grammarguidename,grammarguideimage,content) value (?,?,?)";
		try {
			ptmt = conn.prepareStatement(sql);
		
			String title = grammarGuide.getGrammarguidename();
			String img = grammarGuide.getGrammarguideimage();
			String content =grammarGuide.getContent();
		
			
			
			ptmt.setString(1, title);
			ptmt.setString(2, img);
			ptmt.setString(3, content);
			
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
	
	
	
	
	public static   boolean deleteGrammar(HttpServletRequest request, Connection conn, int id, String table) {
		PreparedStatement ptmt = null;
		
		String sql  = "delete from "+table+" where idgrammarguide = "+id+"";
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
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public static   boolean UpdateGrammar(HttpServletRequest request, Connection conn, GrammarGuide grammarGuide , int id) {
		PreparedStatement ptmt = null;
		
		String sql  = "update grammarguide set grammarguidename='"+grammarGuide.getGrammarguidename()+"',grammarguideimage='"+grammarGuide.getGrammarguideimage()+"',content='"+grammarGuide.getContent()+"' where idgrammarguide="+ id+" ";
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









