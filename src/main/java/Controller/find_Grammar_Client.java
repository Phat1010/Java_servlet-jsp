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

import Bean.GrammarGuide;
import Bean.commentGrammar;
import DAO.CommentDAO;
import DAO.GrammarGuideManageDAO;
import DAO.HomeDAO;
import DB.DBConnection;

/**
 * Servlet implementation class find_Grammar_Client
 */
@WebServlet("/find_Grammar_Client")
public class find_Grammar_Client extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public find_Grammar_Client() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getCharacterEncoding()==null)
		{
			request.setCharacterEncoding("UTF-8");
		}
Connection conn = DBConnection.CreateConnection();


		String name = request.getParameter("search");
		
			List<GrammarGuide> list = GrammarGuideManageDAO.searchGrammarGuide(request, conn, name);
			
			request.setAttribute("listTitle", list);
RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/result-Search-Grammar.jsp");
rd.forward(request, response);
	
	
	
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


		String name = request.getParameter("search");
		
			List<GrammarGuide> list = GrammarGuideManageDAO.searchGrammarGuide(request, conn, name);
			
			request.setAttribute("listTitle", list);
RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/result-Search-Grammar.jsp");
rd.forward(request, response);
	
	
	}

}
