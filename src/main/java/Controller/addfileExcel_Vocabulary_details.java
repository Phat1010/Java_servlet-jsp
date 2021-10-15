package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DetailsVocabularyExcelDAO;
import DAO.detailsExamExcelDAO;
import DB.DBConnection;

/**
 * Servlet implementation class addfileExcel_Vocabulary_details
 */
@WebServlet("/addfileExcel_Vocabulary_details")
public class addfileExcel_Vocabulary_details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addfileExcel_Vocabulary_details() {
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
		int id = Integer.parseInt(request.getParameter("idvocabulary"));
		String address = request.getParameter("address");
		
		boolean check =  DetailsVocabularyExcelDAO.ImportExcel(request, response, conn, address, id);
		if(check) {
			DAO.CheckedDataDAO.Checkedvocab(request, conn, id);
			

		}
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//fix error commit 
		if(!response.isCommitted()) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Admin/manageVocabulary.jsp");
			rd.forward(request, response);

		}
		
		
	}

}
