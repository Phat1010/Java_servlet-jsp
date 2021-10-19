package Controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.read;
import Bean.vocabulary;
import DAO.GrammarGuideManageDAO;
import DAO.manageReadExamDAO;
import DAO.manageVocabularyDAO;
import DB.DBConnection;

/**
 * Servlet implementation class add_image_read
 */
@WebServlet("/add_image_read")
public class add_image_read extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add_image_read() {
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
		if(request.getCharacterEncoding()==null)
		{
			request.setCharacterEncoding("UTF-8");
		}
		
		Connection conn = DBConnection.CreateConnection();
		

		
		int idlast = GrammarGuideManageDAO.lastgrammarguide(request, conn,"toeic.read");
		//do dl ra 2 bagn

		//!do dl ra 2 bagn
		
		String nameimage = request.getParameter("imageread");
		read read = new read();
		read.setReadimage(nameimage);
		
		
		
		boolean test = manageReadExamDAO.UpdateRead(request, conn, read, idlast);
		
		if (test) {
			
		
			
			
		}
		else {
			request.setAttribute("mgsregister", "register Faild");
			
		}
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Admin/manageExam.jsp");
		rd.forward(request, response);
	
	}

}
