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
import Bean.vocabularydetails;
import DAO.CommentDAO;
import DAO.GrammarGuideManageDAO;
import DAO.HomeDAO;
import DAO.manageVocabularyDAO;
import DB.DBConnection;

/**
 * Servlet implementation class details_Vocabulary_Subject_View
 */
@WebServlet("/details_Vocabulary_Subject_View")
public class details_Vocabulary_Subject_View extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public details_Vocabulary_Subject_View() {
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
		
		
		
		List<vocabularydetails> content_pour = manageVocabularyDAO.listVocabularydetails(request, conn, id);
		request.setAttribute("content_pour", content_pour);
	
		
		int countcoumment = HomeDAO.countslider(conn,"comment_grammar" );
		
		
		
		
		
		
		List<commentGrammar> list =CommentDAO.selectComment(conn,id);


		
		
		
		
		request.setAttribute("countcomment", countcoumment);
		request.setAttribute("listcomment", list);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/pour_Vocabulary_Subject_details.jsp");
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
