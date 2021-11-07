package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.answeruser;
import Bean.examinationquestion;
import Bean.result;
import DAO.UserAnwserDAO;
import DAO.practiceExamDAO;
import DB.DBConnection;

/**
 * Servlet implementation class practice_Exam
 */
@WebServlet("/practice_Exam")
public class practice_Exam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public practice_Exam() {
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
		
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/practice_Exam.jsp");
		rd.forward(request, response);	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			/*PrintWriter out= response.getWriter();
			response.setContentType("text/html");
			out.println("<h1>Time out</h1>");*/
		Connection conn = DBConnection.CreateConnection();
		int idExam = Integer.parseInt(request.getParameter("idExam"));
		String name = request.getParameter("namesession");
		
int get_Id_Head =practiceExamDAO.head(conn, idExam);
		
		int get_Id_Last =practiceExamDAO.last(conn, idExam);
		
		int countcorrect= 0;
		int countquestion = practiceExamDAO.getCountrow(conn, idExam);
		int countincorrect=0;
	List<examinationquestion> listpourdata = practiceExamDAO.DisplayQuizAnswer(conn, idExam, request);
	List<answeruser> listansweruser = new ArrayList<answeruser>();
		request.setAttribute("listpourdata", listpourdata);


		for(int i = get_Id_Head ; i <= get_Id_Last;i++)
		{
		
			String answeruser = request.getParameter(""+i);
			
			
		//request.setAttribute("answeruser", answeruser);//chi lay cai cuoi cung thoi vi vay can phai bo vao lst de luu
		if(answeruser!=null)
		{
			answeruser answerUser = new answeruser();
			 answerUser.setIdexaminationquestion(i);
			answerUser.setAnswerUser(answeruser);
			listansweruser.add(answerUser);
			String answercorrect =UserAnwserDAO.correctAnswer(conn, i);
			if(answercorrect.equals(answeruser)) {
				countcorrect++;
			}
			
		}
		else {
		
			answeruser answerUser = new answeruser();
			 answerUser.setIdexaminationquestion(i);
			answerUser.setAnswerUser(answeruser);
			listansweruser.add(answerUser);
			
		}	
		
		}
		
		
		
		countincorrect = countquestion-countcorrect;
		Date date = new Date();
		result rs = new result();
		rs.setCorrectanswer(countcorrect);
		rs.setIncorrectanswer(countincorrect);
		rs.setTimes(date.toString());
		rs.setUsername(name);
		rs.setIdexamination(idExam);
	UserAnwserDAO.InsertAnswerUser(request, idExam, name, conn, rs);
		
		
		
		
		request.setAttribute("countincorrect", countincorrect);
		request.setAttribute("countcorrect", countcorrect);
		request.setAttribute("name", name);
		request.setAttribute("listansweruser", listansweruser);
		request.setAttribute("get_Id_Head", get_Id_Head);request.setAttribute("get_Id_Last", get_Id_Last);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/resultExam.jsp");
		int numberofquestions= 0;
		request.setAttribute("numberofquestions", numberofquestions);
		
		
		rd.forward(request, response);

	}

}
