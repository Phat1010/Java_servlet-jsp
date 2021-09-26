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


import Bean.commentGrammar;
import DAO.CommentDAO;
import DAO.HomeDAO;
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
		if(request.getCharacterEncoding()==null)
		{
			request.setCharacterEncoding("UTF-8");
		}
Connection conn = DBConnection.CreateConnection();


		String name = request.getParameter("name");
		String comment = request.getParameter("comment");

			int id = Integer.parseInt(request.getParameter("id"));
			String dateTime = request.getParameter("dateTime");
			
commentGrammar cmt = new commentGrammar();

cmt.setComment_Grammarcontent(comment);
cmt.setComment_idgrammar(id);
cmt.setComment_Grammar_Username(name);
cmt.setTimes(dateTime);


int countcoumment = HomeDAO.countslider(conn,"comment_grammar" );

boolean check =  CommentDAO.Insertcomment(request, conn, cmt);

//boolean check =  QuizDAO.InsertAccount(request, conn, emp);

if(check)
{
	
	
List<commentGrammar> listcomment =CommentDAO.selectComment(conn,id	);


	request.setAttribute("countcomment", countcoumment);
request.setAttribute("listcomment", listcomment);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/comment-Grammar.jsp");
		rd.forward(request, response);
}
else {
	request.setAttribute("check", "Insert Fail");
}
/*
List<commentGrammar> list =CommentDAO.selectComment(conn);
//request.setAttribute("countcomment", countcoumment);
request.setAttribute("listcomment", list);
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/comment-Grammar.jsp");
	rd.forward(request, response);*/
	}
	

}
