package DAO;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;


import Bean.readquestion;

public class DetailsReadExcelDAO {
	public static boolean ImportExcel(HttpServletRequest request,HttpServletResponse response,Connection conn,String address, int idreadexercise) throws ServletException, IOException
	{
	
		
		FileInputStream inp;
		try 
		{
			inp = new FileInputStream(address);
			HSSFWorkbook wb = new HSSFWorkbook(new POIFSFileSystem(inp));
			
			Sheet sheet = wb.getSheetAt(0);
			
			int num = 0;
			String paragraph = " ";
			String question = " ";
			String option1 = " ";
			String option2 = " ";
			String option3 = " ";
			String option4 = " ";
			String correctanswer = " ";
		
		
			
		
			for (int i=1; i<=sheet.getLastRowNum() ;i++)
			{
				Row row = sheet.getRow(i);
				if(row.getCell(0)==null) {
					num = 0;
					}
				else {
					 num = (int) row.getCell(0).getNumericCellValue();
					}
				
				 if(row.getCell(1)==null) {
					 paragraph = " ";
					}
				 else {
					 paragraph = row.getCell(1).getStringCellValue();
				 }
				 if(row.getCell(2)==null) {
					 question = " ";
					}
				 else {
					 question = row.getCell(2).getStringCellValue();
				 }
				 if(row.getCell(3)==null) {
					 option1 = " ";
					}
				 else {
					 option1 = row.getCell(3).getStringCellValue();
				 }
				 if(row.getCell(4)==null) {
					 option2 = " ";
					}
				 else {
					 option2 = row.getCell(4).getStringCellValue(); 
				 }
				 if(row.getCell(5)==null) {
					 option3 = " ";
					}
				 else {
					 option3 = row.getCell(5).getStringCellValue();
				 }
				 if(row.getCell(6)==null) {
					 option4 = " ";
					}
				 else {
					 option4 = row.getCell(6).getStringCellValue();
				 }
				 if(row.getCell(7)==null) {
					 correctanswer = " ";
					}
				 else {
					 correctanswer = row.getCell(7).getStringCellValue();
				 }
				
			/*	else {
					 num = (int) row.getCell(0).getNumericCellValue();
					 imagequestion = row.getCell(1).getStringCellValue();
					 audio = row.getCell(2).getStringCellValue();
					 audiomp3 = row.getCell(3).getStringCellValue();
					 paragraph = row.getCell(4).getStringCellValue();
					 question = row.getCell(5).getStringCellValue();
					 option1 = row.getCell(6).getStringCellValue();
					 option2 = row.getCell(7).getStringCellValue();
					 option3 = row.getCell(8).getStringCellValue();
					 option4 = row.getCell(9).getStringCellValue();
					 correctanswser = row.getCell(10).getStringCellValue();
					
				}*/
			readquestion readquestion = new readquestion();
			readquestion.setNum(num);
			readquestion.setParagraph(paragraph);
			readquestion.setQuestion(question);
			readquestion.setOption1(option1);
			readquestion.setOption2(option2);
			readquestion.setOption3(option3);
			readquestion.setOption4(option4);
			readquestion.setCorrectanswer(correctanswer);
			readquestion.setIdreadexercise(idreadexercise);
				
				DetailsReadExcelDAO.InsertDataFromExcel(request, readquestion, conn);
				
			}
			
			wb.close();
			
		} 
		catch (FileNotFoundException e) 
		{
			request.setAttribute("message",e.getMessage());
			
		}
		catch (IOException e) 
		{
			request.setAttribute("message",e.getMessage());
			
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Result.jsp");
		rd.forward(request,response);
		return true;
	}

public static void InsertDataFromExcel(HttpServletRequest request,readquestion readquestion,Connection conn)
{
	
	
	
	String sql = "insert into readquestion(num,paragraph,question,option1,option2,option3,option4,correctanswer,idreadexercise) values (?,?,?,?,?,?,?,?,?)";
	try 
	{
		PreparedStatement ptmt = conn.prepareStatement(sql);
		
		ptmt.setInt(1,readquestion.getNum());
		ptmt.setString(2,readquestion.getParagraph());
		ptmt.setString(3, readquestion.getQuestion());
		ptmt.setString(4,readquestion.getOption1());
		ptmt.setString(5,readquestion.getOption2());
		ptmt.setString(6,readquestion.getOption3());
		ptmt.setString(7,readquestion.getOption4());
		ptmt.setString(8,readquestion.getCorrectanswer());
		ptmt.setInt(9,readquestion.getIdreadexercise());
		
		
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
		
		
	} 
	catch (SQLException e) 
	{				
		request.setAttribute("message",e.getMessage());
	}


}
}
