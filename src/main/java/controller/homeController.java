package controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.DatatypeConverter;

import DAO.LotteryDAO;
import DAO.UserDAO;
import DAO.historyDAO;
import bean.history;
import bean.lottery;
import bean.result;

/**
 * Servlet implementation class homeController
 */
public class homeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public homeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getAttribute("bd")!=null) {
			request.setAttribute("bd", "Sorry your account has been ban/suspended");
		}
		if(request.getSession().getAttribute("random")== null) {
			LotteryDAO lt = new LotteryDAO();
			List<lottery> lot = null;
			try {
				lot=lt.forRandom();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			int[]radom= {0,0,0,0,0,0,0,0,0,0};
			if(lot!=null) {
				for(lottery ltt :lot) {
					String temp=ltt.getgDB();
					int length = 0;
					if(ltt.getgDB()!=null) {
						length = ltt.getgDB().length();
					}
					for(int i=0;i<length;i++) {
						String a = temp.substring(i, i+1);
						for(int j=0;j<10;j++) {
							if(a.equals(j+"")) {
								radom[j]=radom[j]+1;
							}
						}
					}
				}
			}
			int[] show = new int [6];
			for(int i=0;i<6;i++) {
				int temp =0;
				for(int j=1;j<10;j++) {
					if(radom[temp]<radom[j]) {
						temp =j;
					}
				}
				show[i]=temp;
				radom[temp]=0;
			}
			Random rand = new Random();
			
			for (int i = 0; i < show.length; i++) {
				int randomIndexToSwap = rand.nextInt(show.length);
				int temp = show[randomIndexToSwap];
				show[randomIndexToSwap] = show[i];
				show[i] = temp;
			}
			String rd ="";
			for(int a :show) {
				rd+=a;
			}
			request.getSession().setAttribute("random", rd);
		}
		Cookie[] cook =request.getCookies();
		String userC="";
		String passC="";
		if(request.getParameter("cp")!=null) {
			String cp= request.getParameter("cp");
			String p= request.getParameter("p");
			try {
				List<lottery> lot =new LotteryDAO().search1(p, cp);
				request.setAttribute("lot", lot);
				request.getRequestDispatcher("Home.jsp").forward(request, response);
				return;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(request.getParameter("History")!=null||request.getParameter("del")!=null) {
			String usC =(String)request.getSession().getAttribute("user");
			try {
				List<history> his = new historyDAO().getHis(usC);
				request.setAttribute("his", his);
				request.getRequestDispatcher("Home.jsp").forward(request, response);
				return;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(request.getParameter("id")!=null) {
			LotteryDAO lt = new LotteryDAO();
			List<lottery> lot = null;
			try {
				lot = lt.searchShow(request.getParameter("id"));
				request.setAttribute("lot", lot);
				request.getRequestDispatcher("Home.jsp").forward(request, response);
				return;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(cook!=null&&cook.length>=2) {
			for(int i=0;i<cook.length;i++) {
				if(cook[i].getName().equals("user")) {
					userC=cook[i].getValue();
				}
				if(cook[i].getName().equals("pass")) {
					passC=cook[i].getValue();
				}
			}
			boolean ur=false;
			MessageDigest md;
			String passMD5="";
			try {
				md = MessageDigest.getInstance("MD5");
				md.update(passC.getBytes());
				byte[] digest =md.digest();
				passMD5=DatatypeConverter.printHexBinary(digest).toUpperCase();
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				ur = new UserDAO().checkNamePass(userC, passMD5);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(ur) {
				request.getSession().setAttribute("user", userC);
			}
		}
		LotteryDAO lt = new LotteryDAO();
		historyDAO his =new historyDAO();
		Date thisDate = new Date();
		String today= new SimpleDateFormat("yyyy/MM/dd").format(thisDate);
		String user1 ="";
		if(request.getSession().getAttribute("user")!=null) {
			user1=(String) request.getSession().getAttribute("user");
		}
		try {
			String c=request.getParameter("c");
			String day=request.getParameter("date");
			if(request.getParameter("lot")!=null&&request.getParameter("lot")!="") {
				String dt="";
				if(day!="") {
					Date date =new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("date"));
					dt = new SimpleDateFormat("yyyy/mm/dd").format(date);
				}
				String num=request.getParameter("lot");
				List<result> ltr = lt.Result(c, dt, num);
				int []temp= new int[ltr.size()];
				int i=0;
				for(result a:ltr) {
					temp[i]=a.getId();
					i++;
				}
				lt.used(temp);
				request.setAttribute("rs", ltr);
				if(user1!="") {
					his.addHis(user1, num, today, dt, c);
				}
				request.getRequestDispatcher("Home.jsp").forward(request, response);
				return;
			}else if(c!=null&&c!=""&&(day==null || day=="")) {
				List<lottery> lot= lt.searchCity(request.getParameter("c"));	
				request.setAttribute("lot", lot);
				if(user1!="") {
					his.addHis(user1,"", today, "", c);
				}
			}else if(c!=null&& c!=""&&day!=null && day!="") {
				Date date =new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("date"));
				String dt = new SimpleDateFormat("yyyy/mm/dd").format(date);
				List<lottery> lot= lt.search(request.getParameter("c"), dt)	;
				request.setAttribute("lot", lot);
				if(user1!="") {
					his.addHis(user1,"", today, dt, c);
				}
			}else if((c==null||c=="")&&day!=null&& day!="") {
				Date date =new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("date"));
				String dt = new SimpleDateFormat("yyyy/mm/dd").format(date);
				List<lottery> lot= lt.searchDate(dt);
				request.setAttribute("lot", lot);
				if(user1!="") {
					his.addHis(user1,"", today, dt, "");
				}
			}
			else {
			List<lottery> lot = lt.onShow();
			request.setAttribute("lot", lot);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("Home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
