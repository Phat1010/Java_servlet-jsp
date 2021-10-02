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

import Bean.banner;
import DAO.HomeDAO;
import DAO.LoginDAO;
import DB.DBConnection;

/**
 * Servlet implementation class SignIn_Controller
 */
@WebServlet("/SignIn_Controller")
public class SignIn_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignIn_Controller() {
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
		Connection conn = DBConnection.CreateConnection();
		
		String username = request.getParameter("your_name");
		String pass = request.getParameter("your_pass");
		
		boolean check = LoginDAO.checkaccountlogin(username, pass, conn, request);
		if(check)
		{
			request.setAttribute("msg", "Incorrect account or password");
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Login.jsp");
			rd.forward(request, response);	
			
		}
		else {
			HttpSession session = request.getSession(true);
			session.setAttribute("accountsession", username);
			
			
			
			
			
			//slideConnection conn = DBConnection.CreateConnection();
			List<banner> listbanner = HomeDAO.listslide(conn);
			
			int countbanner= HomeDAO.countslider(conn, "banner");
			
			
			request.setAttribute("listbanner", listbanner);
			request.setAttribute("countbanner", countbanner);
			
			
			//end slide
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/TestConnection.jsp");
			rd.forward(request, response);	
		}
		
		
		
		
		
		
	}

}
