package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LotteryDAO;
import DAO.UserDAO;
import bean.countStatusUsers;
import bean.lottery;
import bean.user;

/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		countStatusUsers status = null;
		try {
			status = new UserDAO().status();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		request.setAttribute("status", status);
		if(request.getParameter("idSearch")!=null) {
			try {
				List<lottery> edit = new LotteryDAO().search(request.getParameter("idSearch"));
					request.setAttribute("listLottery", edit);
					RequestDispatcher rd = request.getRequestDispatcher("manager.jsp");
					rd.forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
		try {
			if(request.getAttribute("success")!=null) {
				if(request.getAttribute("success").equals(1)) {
					request.setAttribute("success", "1");
				}
				if(request.getAttribute("success").equals(2)) {
					request.setAttribute("success", "2");
				}
			}
			List<lottery> lt =new LotteryDAO().show();
			request.setAttribute("listLottery", lt);
			if(request.getParameter("dashboard")!=null) {
				UserDAO utmp =new UserDAO();
				int tmpU=utmp.all();
				request.setAttribute("userU", tmpU);
				int tmpN=utmp.allN();
				request.setAttribute("userN", tmpN);
				int tmpA=utmp.allA();
				request.setAttribute("userA", tmpA);
				int tmp =new LotteryDAO().all();
				request.setAttribute("ltc", tmp);
				try {
					List<user> listUser = new UserDAO().listUser();
					request.setAttribute("listUser", listUser);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				request.getRequestDispatcher("pages/dashboard.jsp").forward(request, response);
				return;
			}
			RequestDispatcher rd = request.getRequestDispatcher("manager.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
