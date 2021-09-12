package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
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
 * Servlet implementation class tableAdminForward
 */
@WebServlet("/tableAdminForward")
public class tableAdminForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tableAdminForward() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection conn = DBConnection.CreateConnection();
			List<GrammarGuide> list = GrammarGuideManageDAO.grammarguide(request, conn);
			
			request.setAttribute("listgrammarguidemanager", list);
		
			conn.close();
			
		} catch (SQLException e) {
			request.setAttribute("msggrammer", e.getMessage());
		}
RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Admin/tableAdmin.jsp");
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
