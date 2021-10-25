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

import Bean.banner;
import DAO.HomeDAO;
import DB.DBConnection;




/**
 * Servlet implementation class TestConnectionForward
 */
@WebServlet("/TestConnectionForward")
public class TestConnectionForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestConnectionForward() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = DBConnection.CreateConnection();
		List<banner> listbanner = HomeDAO.listslide(conn);
		
		int countbanner= HomeDAO.countslider(conn, "banner");
		
		
		request.setAttribute("listbanner", listbanner);
		request.setAttribute("countbanner", countbanner);
		
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/TestConnection.jsp");
		rd.forward(request, response);
		
		/*RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Admin/homeAdmin.jsp");
		rd.forward(request, response);*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
