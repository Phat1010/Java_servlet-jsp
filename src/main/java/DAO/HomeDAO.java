package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Bean.banner;

public class HomeDAO {

	public static List<banner> listslide (Connection conn){
		 
		List<banner> list = new ArrayList<banner>();
		
		try {
			
			PreparedStatement ptmt = null;
			String sql = "select * from banner";
			ptmt = conn.prepareStatement(sql);
			
			
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()) {
				banner bn = new banner();
				 Integer bannerid = rs.getInt(1);
				 String bannername = rs.getString("Bannername");
				 String bannercontent= rs.getString("Bannercontent");
				 String bannerimage= rs.getString("bannerimage");
				 bn.setIdBanner(bannerid); 
				 bn.setBannername(bannername); 
				 bn.setBannercontent(bannercontent);
				 bn.setBannerimage(bannerimage);
			
				
			
				 list.add(bn);
			
			}
			ptmt.close();
			rs.close();
			
			
			
		} catch (SQLException e) { 
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return list ;
	}
			
	
	
	public static int countslider (Connection conn,String nametable){
		 
	int count = 0;
		
		try {
			
			PreparedStatement ptmt = null;
			String sql = "select count(*) from "+nametable+"";
			ptmt = conn.prepareStatement(sql);
			
			
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()) {
			
				count = rs.getInt(1);
				 
			
			}
			ptmt.close();
			rs.close();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return count ;
	}
			
	
	
	
	
}
