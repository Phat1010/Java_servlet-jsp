package Controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import DB.DBConnection;

/**
 * Servlet implementation class upload_file_image_vocabulary
 */
@WebServlet("/upload_file_image_vocabulary")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 50, // 50MB
maxRequestSize = 1024 * 1024 * 50) // 50MB
public class upload_file_image_vocabulary extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public upload_file_image_vocabulary() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part filePart1 = request.getPart("file"); // Retrieves <input type="file" name="file">
	    String fileName1 = Paths.get(filePart1.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
	
	
	for (Part part : request.getParts()) {
		  String fileName = extractFileName(part);
	      // refines the fileName in case it is an absolute path
	      fileName = new File(fileName).getName();
	      part.write(this.getFolderUpload(request,response).getAbsolutePath() + File.separator + fileName);
	      System.out.println("file : " + fileName);
	   
	    }
	    request.setAttribute("message", "Upload File Success!");
	    request.setAttribute("message2", fileName1);
	    
	    
	    //TURUN FORM
	   
		   //TURUN FORM
		   //TURUN FORM
	    ServletContext context = request.getServletContext();
	    request.setAttribute("message1",context.getRealPath("/imageVocabulary/"));
	
	    getServletContext().getRequestDispatcher("/WEB-INF/View/Admin/addimageVocabulary.jsp").forward(request, response);
	  }
	  /**
	   * Extracts file name from HTTP header content-disposition
	   */
	  private String extractFileName(Part part) {
	    String contentDisp = part.getHeader("content-disposition");
	    String[] items = contentDisp.split(";");
	    for (String s : items) {
	      if (s.trim().startsWith("filename")) {
	        return s.substring(s.indexOf("=") + 2, s.length() - 1);
	      }
	    }
	    return "";
	  }
	  public File getFolderUpload(HttpServletRequest request, HttpServletResponse response) {
	  //  File folderUpload = new File(System.getProperty("user.home") + "/Uploads");
	   // File folderUpload = new File("E:" + "/Uploads");
		  ServletContext context = request.getServletContext();
		  File folderUpload = new File(context.getRealPath("/imageExamUpload/") );
	    if (!folderUpload.exists()) {
			try {
				PrintWriter out =   response.getWriter();
				out.print("File exitst. Require: test file again");
				request.setAttribute("imageexists", "FIle exist.");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	      folderUpload.mkdirs();
	    }
	    return folderUpload;
	  }
	}


