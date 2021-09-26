package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import Bean.commentGrammar;



public class CommentDAO {

	
	public static   boolean Insertcomment(HttpServletRequest request, Connection conn, commentGrammar comment) {
		PreparedStatement ptmt = null;
		
		String sql  = "insert into comment_grammar (comment_Grammarcontent,comment_Grammar_Username,comment_idgrammar,times) value ('"+comment.getComment_Grammarcontent()+"','"+comment.getComment_Grammar_Username()+"','"+comment.getComment_idgrammar()+"','"+comment.getTimes()+"')";
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
	
	
	
	


			

	
	public static List<commentGrammar> selectComment ( Connection conn , int id){
		
		 
		List<commentGrammar> list = new ArrayList<commentGrammar>();
		
		try {
			
			PreparedStatement ptmt = null;
			String sql = "select * from comment_grammar where comment_idgrammar='"+id+"' order by idcomment_Grammar DESC";
			ptmt = conn.prepareStatement(sql);
			
			
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()) {
				commentGrammar comment = new commentGrammar();
				 int idcomment_Grammar = rs.getInt("idcomment_Grammar");
				 
				 String comment_Grammarcontent= rs.getString("comment_Grammarcontent");
				 String comment_Grammar_Username= rs.getString("comment_Grammar_Username");
				 int comment_idgrammar= rs.getInt("comment_idgrammar");
			String times = rs.getString("times");
			
			
				comment.setComment_idgrammar(comment_idgrammar);
				comment.setIdcomment_Grammar(idcomment_Grammar);
			comment.setComment_Grammarcontent(comment_Grammarcontent);
			comment.setComment_Grammar_Username(comment_Grammar_Username);
		comment.setTimes(times);
			
			
				 list.add(comment);
			
			}
			ptmt.close();
			rs.close();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return list ;
	}
	
}
