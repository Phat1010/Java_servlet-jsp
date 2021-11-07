package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
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
		String rememberme = request.getParameter("remember-me");
	
		int check = LoginDAO.checkaccountlogin(username, pass, conn, request);
		if(check==0)
		{
			request.setAttribute("msg", "Incorrect account or password");
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Login.jsp");
			rd.forward(request, response);	
			
		}
		if(check==2)
		{
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Admin/homeAdmin.jsp");
			rd.forward(request, response);
			
		}
		
		if(check==1)
		{
			
	
			if(rememberme!=null)
			{
				
				
				HttpSession session = request.getSession(true);
				session.setAttribute("passwordsession", pass);
				
				HttpSession session1 = request.getSession(true);
				session1.setAttribute("accountsession1", username);
				
				HttpSession session2 = request.getSession(true);
				session2.setAttribute("checked", "checked");
				
			}
			else
			{
			HttpSession session = request.getSession(true);
			session.setAttribute("passwordsession", "");
			
			HttpSession session1 = request.getSession(true);
			session1.setAttribute("accountsession1", "");
			HttpSession session2 = request.getSession(true);
			session2.setAttribute("checked", "");
		}
			
				
				HttpSession session = request.getSession(true);
				session.setAttribute("accountsession", username);
				
				
				
				
				
				//slideConnection conn = DBConnection.CreateConnection();
				List<banner> listbanner = HomeDAO.listslide(conn);
				
				int countbanner= HomeDAO.countslider(conn, "banner");
				
				
				request.setAttribute("listbanner", listbanner);
				request.setAttribute("countbanner", countbanner);
				
				//request.setAttribute("rememberme", rememberme);
				//end slide
				
				RequestDispatcher rd1 = request.getRequestDispatcher("/WEB-INF/View/TestConnection.jsp");
				rd1.forward(request, response);	
			
		
		
			
			
			
		}
		
		
		
		
		
		
	}

}
