package Controller;

import java.io.IOException;
import java.sql.Connection;

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
 * Servlet implementation class UpdateGrammarImgae
 */
@WebServlet("/UpdateGrammarImgae")
public class UpdateGrammarImgae extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateGrammarImgae() {
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
		int id = GrammarGuideManageDAO.lastgrammarguide(request, conn, "grammarguide");
	
		
		String title = request.getParameter("titlegrammar");
		String content = request.getParameter("content");
		String image = request.getParameter("nameimge");
		
		
		GrammarGuide gg = new GrammarGuide();
		gg.setGrammarguidename(title);
		gg.setGrammarguideimage(image);
		gg.setContent(content);
		
		boolean test = GrammarGuideManageDAO.UpdateGrammar(request, conn, gg,id);
		
		if (test) {
			
			request.setAttribute("mgsregister", "register success");
			RequestDispatcher rd = request.getRequestDispatcher("grammarGuideImage");
			rd.forward(request, response);
			
		}
		else {
			request.setAttribute("mgsregister", "register Faild");
			
		}
		
		
	}
	}


