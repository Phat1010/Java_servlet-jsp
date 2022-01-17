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
 * Servlet implementation class grammarGuideImage
 */
@WebServlet("/grammarGuideImage")
public class grammarGuideImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public grammarGuideImage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*Connection conn = DBConnection.CreateConnection();
		int idlast = GrammarGuideManageDAO.lastgrammarguide(request, conn,"grammarguide");
		List<GrammarGuide> listlast = GrammarGuideManageDAO.selectlastgrammarguide(request, conn, idlast);
		request.setAttribute("listlast", listlast);
		
		
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/TestConnection.jsp");
		rd.forward(request, response);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Admin/addimageGrammarGuide.jsp");
		rd.forward(request, response);
		*/
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
		
		int idlast = GrammarGuideManageDAO.lastgrammarguide(request, conn,"grammarguide");
		//do dl ra 2 bagn

		//!do dl ra 2 bagn
		
		String title = request.getParameter("titlegrammar");
		
		String content = request.getParameter("content");
		
		String image = request.getParameter("nameimage");
		GrammarGuide gg = new GrammarGuide();
		gg.setGrammarguidename(title);
		gg.setGrammarguideimage(image);
		gg.setContent(content);
		
		boolean test = GrammarGuideManageDAO.UpdateGrammar(request, conn, gg,idlast);
		request.setAttribute("mgsupdatate", "idlast"+idlast);
		if (test) {
			
			request.setAttribute("mgsupdatate", "update success");
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Admin/homeAdmin.jsp");
			rd.forward(request, response);
			
		}
		else {
			request.setAttribute("mgsregister", "register Faild");
		
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Admin/homeAdmin.jsp");
			rd.forward(request, response);
			
			
		}
	}
	

}
