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
import DAO.HomeDAO;
import DAO.PaginationDAO;
import DB.DBConnection;

/**
 * Servlet implementation class UpdateGrammarGuide
 */
@WebServlet("/UpdateGrammarGuide")
public class UpdateGrammarGuide extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateGrammarGuide() {
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
		
		int idlast = GrammarGuideManageDAO.lastgrammarguide(request, conn,"id");
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
			GrammarGuideManageDAO.deleteGrammaredit(request, conn, idlast, "id");
String getcurrentpage = "1";
			
			int currentpage = Integer.parseInt(getcurrentpage);

			
			
			
		int total_record = HomeDAO.countslider(conn,"grammarguide");
			
			int totalItemsPerPage = 4;
		
			
			
			int totalpage = total_record/totalItemsPerPage;
			int totalpagecheck = total_record%totalItemsPerPage;
			if(totalpagecheck>0)
			{
				totalpage=totalpage+1;
			}
			
			
			
			if(currentpage > totalpage)
			{
				currentpage = totalpage;
			}
			else if (currentpage <1) {
				currentpage= 1;
				
			}
			else {	
			}

			int start = (currentpage-1)*totalItemsPerPage;

			//List<Emp> list = QuizDAO.selectAnswser(1,3 , conn);
			List<GrammarGuide> listTitle =PaginationDAO.selectGrammar(start, totalItemsPerPage, "grammarguide", conn,request);

			request.setAttribute("listgrammarguidemanager", listTitle);
			
			
			
			request.setAttribute("currentpage", currentpage);
			request.setAttribute("totalpage",totalpage);
			request.setAttribute("pageid",getcurrentpage);
		
			
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Admin/tableAdmin.jsp");
			rd.forward(request, response);
			
		}
		else {
			request.setAttribute("mgsregister", "register Faild");
			
		}
	}
	

}
