package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.historyDAO;
import bean.history;

/**
 * Servlet implementation class controllerHistory
 */
public class controllerHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controllerHistory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getParameter("idSearch")!=null) {
			try {
				 try {
					 int tmp =Integer.parseInt(request.getParameter("idSearch"));
					 List<history> his = new historyDAO().getHis1(tmp);
					 request.setAttribute("his", his);
				    } catch (NumberFormatException e) {
				    	String tmp =request.getParameter("idSearch");
				    	List<history> his = new historyDAO().getHis1(tmp);
						request.setAttribute("his", his);
				    }
				request.getRequestDispatcher("history.jsp").forward(request, response);
				return;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		try {
			List<history> his = new historyDAO().getHis();
			request.setAttribute("his", his);
			request.getRequestDispatcher("history.jsp").forward(request, response);
			return;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
