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
import DAO.GrammarGuideManageDAO;

import DB.DBConnection;

/**
 * Servlet implementation class Pour_Content_Grammar
 */
@WebServlet("/Pour_Content_Grammar")
public class Pour_Content_Grammar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Pour_Content_Grammar() {
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
		


		int id = Integer.parseInt(request.getParameter("id"));
		
		List<GrammarGuide> content_pour = GrammarGuideManageDAO.selectlastgrammarguide(request, conn, id);
		request.setAttribute("content_pour", content_pour);
		request.setAttribute("n_in_database", "\n");//1 line apart
		request.setAttribute("r_in_database", "\r");//return to surrender
		request.setAttribute("n_in_html", "</br>");//1 line apart
		request.setAttribute("r_in_html", "\r");//return to surrender
		
		
		request.setAttribute("star_in_database", "**");//return to surrender
		request.setAttribute("star_in_html", "<br>");//1 line apart
		
		
		

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/pour_grammar.jsp");
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
