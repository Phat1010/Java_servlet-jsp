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


import DB.DBConnection;

/**
 * Servlet implementation class Comment_Grammar
 */
@WebServlet("/Comment_Grammar")
public class Comment_Grammar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Comment_Grammar() {
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
/*
Connection conn = DBConnection.CreateConnection();
		String name = request.getParameter("name");
String comment = request.getParameter("comment");
Emp emp = new Emp();
emp.setName(name);
emp.setComment(comment);


request.setAttribute("name", name);
request.setAttribute("comment", comment);

boolean check =  QuizDAO.Insertcomment(request, conn, emp);

//boolean check =  QuizDAO.InsertAccount(request, conn, emp);

if(check)
{
	request.setAttribute("check", 1);
}
else {
	request.setAttribute("check", 2);
}
	
		List<Emp> list = QuizDAO.selectAnswser2(conn, "commentdata");
		
		request.setAttribute("listcomment", list);
	
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/result.jsp");
		rd.forward(request, response);
	}*/
	}

}
