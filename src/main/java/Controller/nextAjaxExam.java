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

import Bean.examinationquestion;
import DAO.practiceExamDAO;
import DB.DBConnection;

/**
 * Servlet implementation class nextAjaxExam
 */
@WebServlet("/nextAjaxExam")
public class nextAjaxExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public nextAjaxExam() {
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
	
		String getcurrentpage = request.getParameter("pageid");
	
		int currentpage = Integer.parseInt(getcurrentpage);

		int currentpag1 = Integer.parseInt(request.getParameter("pageid"));
		
		
	int total_record = practiceExamDAO.getCountrow(conn, id);
		
		int totalItemsPerPage = 1;
	
		
		
		int totalpage = total_record/totalItemsPerPage;
		int totalpagecheck = total_record%totalItemsPerPage;
		if(totalpagecheck>0)
		{
			totalpage=totalpage+1;
		}
		
		
		
		if(currentpag1 > totalpage)
		{
			currentpag1 = totalpage;
		}
		else if (currentpag1 <1) {
			currentpag1= 1;
			
		}
		else {	
		}

		int start = (currentpage-1)*totalItemsPerPage;

		//List<Emp> list = QuizDAO.selectAnswser(1,3 , conn);
		List<examinationquestion> listpourdata = practiceExamDAO.DisplayQuiz(conn, id, start, totalItemsPerPage, request);
		List<examinationquestion> listpouranswer = practiceExamDAO.DisplayQuizAnswer(conn, id, request);

		request.setAttribute("listpourdata", listpourdata);
		request.setAttribute("listpouranswer", listpouranswer);
		
		request.setAttribute("id", id);
	
		request.setAttribute("totalpage",totalpage);
		request.setAttribute("pageid",getcurrentpage);
		request.setAttribute("currentpage",currentpage);
		request.setAttribute("currentpag1",currentpag1);
		

		request.setAttribute("total_record",total_record);
		
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/ajaxquestion.jsp");
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
