package Controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Bean.examination;

import DAO.GrammarGuideManageDAO;

import DAO.ManageExamDAO;
import DB.DBConnection;

/**
 * Servlet implementation class add_image_exam
 */
@WebServlet("/add_image_exam")
public class add_image_exam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add_image_exam() {
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
		

		
		int idlast = GrammarGuideManageDAO.lastgrammarguide(request, conn,"examination");
		//do dl ra 2 bagn

		//!do dl ra 2 bagn
		
		String nameimage = request.getParameter("imageexam");
		
	examination ex = new examination();
	ex.setExaminationimage(nameimage);
		
		
		boolean test = ManageExamDAO.UpdateExam(request, conn, ex, idlast);
		
		if (test) {
			
			request.setAttribute("insertsuccess","insertsuccess");
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Admin/homeAdmin.jsp");
			rd.forward(request, response);
			
			
		}
		else {
			request.setAttribute("mgsregister", "register Faild");
			
		}
		request.setAttribute("insertsuccess","insertsuccess");
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Admin/homeAdmin.jsp");
		rd.forward(request, response);
	}
	

}
