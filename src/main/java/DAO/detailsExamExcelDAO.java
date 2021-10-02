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
	public static void ImportExcel(HttpServletRequest request,HttpServletResponse response,Connection conn,String address, int idexam) throws ServletException, IOException
	{
	
		FileInputStream inp;
		try 
		{
			inp = new FileInputStream(address);
			HSSFWorkbook wb = new HSSFWorkbook(new POIFSFileSystem(inp));
			
			Sheet sheet = wb.getSheetAt(0);
			
			
			
			for (int i=1; i<=sheet.getLastRowNum();i++)
			{
				Row row = sheet.getRow(i);
				
				int num = (int) row.getCell(0).getNumericCellValue();
				String imagequestion = row.getCell(1).getStringCellValue();
				String audio = row.getCell(2).getStringCellValue();
				String audiomp3 = row.getCell(3).getStringCellValue();
				String paragraph = row.getCell(4).getStringCellValue();
				String question = row.getCell(5).getStringCellValue();
				String option1 = row.getCell(6).getStringCellValue();
				String option2 = row.getCell(7).getStringCellValue();
				String option3 = row.getCell(8).getStringCellValue();
				String option4 = row.getCell(9).getStringCellValue();
				String correctanswser = row.getCell(10).getStringCellValue();
				
				
				
				
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
	}

public static void InsertDataFromExcel(HttpServletRequest request,examinationquestion ex,Connection conn)
{
	
	
	
	String sql = "insert into account(imagequestion,audio,audiomp3,paragraph,question,option1,option2,option3,option4,correctanswser,num,examinationid) values (?,?,?,?,?,?,?,?,?,?,?,?)";
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
		conn.close();
		
	} 
	catch (SQLException e) 
	{				
		request.setAttribute("message",e.getMessage());
	}


}}
