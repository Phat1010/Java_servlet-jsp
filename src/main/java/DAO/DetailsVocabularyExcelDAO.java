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


import Bean.vocabularydetails;

public class DetailsVocabularyExcelDAO {
	public static boolean ImportExcel(HttpServletRequest request,HttpServletResponse response,Connection conn,String address, int idvoc) throws ServletException, IOException
	{
	
		
		FileInputStream inp;
		try 
		{
			inp = new FileInputStream(address);
			HSSFWorkbook wb = new HSSFWorkbook(new POIFSFileSystem(inp));
			
			Sheet sheet = wb.getSheetAt(0);
			
			int num = 0;
			String vocabularydetailsname = " ";
			String transcribe = " ";
			String image = " ";
			String audiomp3 = " ";
			String audioogg = " ";
			String mean = " ";
			
			
		
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
					 vocabularydetailsname = " ";
					}
				 else {
					 vocabularydetailsname = row.getCell(1).getStringCellValue();
				 }
				 if(row.getCell(2)==null) {
					 transcribe = " ";
					}
				 else {
					 transcribe = row.getCell(2).getStringCellValue();
				 }
				 if(row.getCell(3)==null) {
					 image = " ";
					}
				 else {
					 image  = row.getCell(3).getStringCellValue();
				 }
				 if(row.getCell(4)==null) {
					 audiomp3 = " ";
					}
				 else {
					 audiomp3 = row.getCell(4).getStringCellValue(); 
				 }
				 if(row.getCell(5)==null) {
					 audioogg = " ";
					}
				 else {
					 audioogg = row.getCell(5).getStringCellValue();
				 }
				 if(row.getCell(6)==null) {
					 mean = " ";
					}
				 else {
					 mean = row.getCell(6).getStringCellValue();
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
			
				vocabularydetails vocab= new vocabularydetails();
				vocab.setNum(num);
				vocab.setVocabularydetailsname(vocabularydetailsname);
				
				vocab.setTranscribe(transcribe);
				vocab.setImage(image);
				vocab.setAudiomp3(audiomp3);
				vocab.setAudioogg(audioogg);
				vocab.setMean(mean);
				vocab.setIdvocabulary(idvoc);
				 
				 
				
				
				DetailsVocabularyExcelDAO.InsertDataFromExcelVocabulary(request, vocab, conn);
				
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
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/manageVocabulary.jsp");
		rd.forward(request,response);
		return true;
	}

public static void InsertDataFromExcelVocabulary(HttpServletRequest request,vocabularydetails vocab,Connection conn)
{
	
	
	
	String sql = "insert into vocabularydetails(num,vocabularydetailsname,transcribe,image,audiomp3,audioogg,mean,idvocabulary) values (?,?,?,?,?,?,?,?)";
	try 
	{
		PreparedStatement ptmt = conn.prepareStatement(sql);
		
		
		ptmt.setInt(1,vocab.getNum());
		ptmt.setString(2,vocab.getVocabularydetailsname());
		ptmt.setString(3,vocab.getTranscribe());
		ptmt.setString(4,vocab.getImage());
		ptmt.setString(5,vocab.getAudiomp3());
		ptmt.setString(6,vocab.getAudioogg());
		ptmt.setString(7,vocab.getMean());
		ptmt.setInt(8,vocab.getIdvocabulary());
		
		
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
