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


import Bean.examinationquestion;

public class detailsExamExcelDAO {
	public static boolean ImportExcel(HttpServletRequest request,HttpServletResponse response,Connection conn,String address, int idexam) throws ServletException, IOException
	{
	
		
		FileInputStream inp;
		try 
		{
			inp = new FileInputStream(address);
			HSSFWorkbook wb = new HSSFWorkbook(new POIFSFileSystem(inp));
			
			Sheet sheet = wb.getSheetAt(0);
			
			int num = 0;
			String imagequestion = " ";
			String audio = " ";
			String audiomp3 = " ";
			String paragraph = " ";
			String question = " ";
			String option1 = " ";
			String option2 = " ";
			String option3 = " ";
			String option4 = " ";
			String correctanswser = " ";
		
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
					imagequestion = " ";
					}
				 else {
					 imagequestion = row.getCell(1).getStringCellValue();
				 }
				 if(row.getCell(2)==null) {
					audio = " ";
					}
				 else {
					 audio = row.getCell(2).getStringCellValue();
				 }
				 if(row.getCell(3)==null) {
					audiomp3 = " ";
					}
				 else {
					 audiomp3 = row.getCell(3).getStringCellValue();
				 }
				 if(row.getCell(4)==null) {
					paragraph = " ";
					}
				 else {
					 paragraph = row.getCell(4).getStringCellValue(); 
				 }
				 if(row.getCell(5)==null) {
					question = " ";
					}
				 else {
					 question = row.getCell(5).getStringCellValue();
				 }
				 if(row.getCell(6)==null) {
					option1 = " ";
					}
				 else {
					 option1 = row.getCell(6).getStringCellValue();
				 }
				 if(row.getCell(7)==null) {
					option2 = " ";
					}
				 else {
					 option2 = row.getCell(7).getStringCellValue();
				 }
				 if(row.getCell(8)==null) {
					option3 = " ";
					}
				 else {
					 option2 = row.getCell(7).getStringCellValue();
				 }
				 if(row.getCell(9)==null) {
					option4 = " ";
					}
				 else {
					 option4 = row.getCell(9).getStringCellValue();
				 }
				 if(row.getCell(10)==null) {
					correctanswser = " ";
					}
				 else {
					 correctanswser = row.getCell(10).getStringCellValue(); 
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
			
				
				examinationquestion ex = new examinationquestion();
				ex.setNum(num);
				ex.setImagequestion(imagequestion);
				ex.setAudio(audio);
				ex.setAudiomp3(audiomp3);
				ex.setParagraph(paragraph);
				ex.setQuestion(question);
				ex.setOption1(option1);
				ex.setOption2(option2);
				ex.setOption3(option3);
				ex.setOption4(option4);
				ex.setCorrectanswser(correctanswser);
				ex.setExaminationid(idexam);
				
				detailsExamExcelDAO.InsertDataFromExcel(request, ex, conn);
				
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

public static void InsertDataFromExcel(HttpServletRequest request,examinationquestion ex,Connection conn)
{
	
	
	
	String sql = "insert into examinationquestion(num,imagequestion,audio,audiomp3,paragraph,question,option1,option2,option3,option4,correctanswser,examinationid) values (?,?,?,?,?,?,?,?,?,?,?,?)";
	try 
	{
		PreparedStatement ptmt = conn.prepareStatement(sql);
		ex.getIdexaminationquestion();
		
		ptmt.setInt(1,ex.getNum());
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
		ptmt.setInt(12,ex.getExaminationid());
		

		
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
