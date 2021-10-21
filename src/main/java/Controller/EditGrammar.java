package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.GrammarGuide;
import DAO.GrammarGuideManageDAO;
import DAO.HomeDAO;
import DAO.PaginationDAO;
import DB.DBConnection;

/**
 * Servlet implementation class EditGrammar
 */
@WebServlet("/EditGrammar")
public class EditGrammar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditGrammar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
Connection conn = DBConnection.CreateConnection();
		
		//String x = request.getParameter("delete1");
		int id= Integer.parseInt(request.getParameter("id"));
		GrammarGuideManageDAO.insertid(request, conn, id);
		
		
	
		
		
		
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Admin/EditimageGrammarGuide.jsp");
			rd.forward(request, response);
			
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
