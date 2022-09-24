package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LotteryDAO;
import DAO.UpdateDAO;
import DAO.UserDAO;
import bean.countStatusUsers;
import bean.lottery;

/**
 * Servlet implementation class AddUpdateController
 */
public class AddUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		if(request.getParameter("idDel1")!=null){
			if(request.getParameter("check").equals("nd")) {
				RequestDispatcher rd = request.getRequestDispatcher("Controller");
				rd.forward(request, response);
			}else {
				UpdateDAO update = new UpdateDAO();
				try {
					update.delete(request.getParameter("idDel1"));
					RequestDispatcher rd = request.getRequestDispatcher("Controller");
					rd.forward(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					request.setAttribute("success", 2);
					RequestDispatcher rd = request.getRequestDispatcher("Controller");
					rd.forward(request, response);
				}
			}
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		countStatusUsers status = null;
		try {
			status = new UserDAO().status();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		request.setAttribute("status", status);
		if(request.getParameter("status")!=null) {
			String g8 = "";
			String g7 = "";
			String g6 = "";
			String g5 = "";
			String g4 = "";
			String g3 = "";
			String g2 = "";
			String g1 = "";
			String gdb = "";
			if(request.getParameter("typeInput").equals("1")) {
				File file =new File("D:/đồ án/"+request.getParameter("file"));
				try (Scanner sc = new Scanner(file)) {
					if(!request.getParameter("place").equals("MB")) {
						g8=sc.nextLine();
					}
					 g7 = sc.nextLine();
					 g6 = sc.nextLine();
					 g5 = sc.nextLine();
					 g4 = sc.nextLine();
					 g3 = sc.nextLine();
					 g2 = sc.nextLine();
					 g1 = sc.nextLine();
					 gdb = sc.nextLine();
				}	
			}else {
				if(request.getParameter("place").equals("MB")) {
					g7 = request.getParameter("g701")+" "+request.getParameter("g71")+" "+request.getParameter("g72")+" "+request.getParameter("g73");
					g6 = request.getParameter("g601")+" "+request.getParameter("g611")+" "+request.getParameter("g621");
					g5 = request.getParameter("g501")+" "+request.getParameter("g51")+" "+request.getParameter("g52")+" "+request.getParameter("g53")+" "+request.getParameter("g54")+" "+request.getParameter("g55");
					g4 = request.getParameter("g401")+" "+request.getParameter("g411")+" "+request.getParameter("g421")+" "+request.getParameter("g431");
					g3 = request.getParameter("g301")+" "+request.getParameter("g311")+" "+request.getParameter("g32")+" "+request.getParameter("g33")+" "+request.getParameter("g34")+" "+request.getParameter("g35");
					g2 = request.getParameter("g20")+" "+request.getParameter("g21");
					g1 = request.getParameter("g11");
					gdb= request.getParameter("gdb1");
				}else {
					g8 = request.getParameter("g8");
					g7 = request.getParameter("g70");
					g6 = request.getParameter("g60")+" "+request.getParameter("g61")+" "+request.getParameter("g62");
					g5 = request.getParameter("g50");
					g4 = request.getParameter("g40")+" "+request.getParameter("g41")+" "+request.getParameter("g42")+" "+request.getParameter("g43")+" "+request.getParameter("g44")+" "+request.getParameter("g45")+" "+request.getParameter("g46");
					g3 = request.getParameter("g30")+" "+request.getParameter("g31");
					g2=	request.getParameter("g2");
					g1 = request.getParameter("g1");
					gdb= request.getParameter("gdb");
				}
			}
			String[] a=request.getParameterValues("city");
			String city="";
			for(String i:a) {
				city+=i;
			}
			int i=Integer.parseInt(request.getParameter("id"));
			lottery lt =new lottery(i, request.getParameter("user"), request.getParameter("status"), request.getParameter("date"), request.getParameter("place"), city,g8 , g7, g6, g5, g4, g3, g2, g1, gdb, request.getParameter("des"),"");
			UpdateDAO update = new UpdateDAO();
			try {
				update.update2(lt);
				request.setAttribute("success", 1);
				RequestDispatcher rd = request.getRequestDispatcher("Controller");
				rd.forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				request.setAttribute("success", 2);
				RequestDispatcher rd = request.getRequestDispatcher("manage-update.jsp");
				rd.forward(request, response);
			}
		}
		if(request.getParameter("newLott")!= null) {
			try {
				UpdateDAO upd =new UpdateDAO();
				List<Integer> lID =upd.update();
				for(int id: lID) {
					request.setAttribute("id", id);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			RequestDispatcher rd = request.getRequestDispatcher("manage-update.jsp");
			rd.forward(request, response);
		}
		
		if(request.getParameter("idEdit")!=null) {
			try {
				List<lottery> edit = new LotteryDAO().search(request.getParameter("idEdit"));
				request.setAttribute("eLottery", edit);
				for(lottery lott :edit) {
					String s7 = lott.getG7();
					if(s7!=null) {
						String[] arr7 = s7.split(" ");    
						int i7=0;
						for ( String ss : arr7) {
							request.setAttribute("g7"+i7, ss);
						    i7++;
						}
					}
					String s6 = lott.getG6();
					if(s6!=null) {
						String[] arr6 = s6.split(" ");   
						int i6=0;
						for ( String ss : arr6) {
							request.setAttribute("g6"+i6, ss);
						    i6++;
						}
					}
					String s5 = lott.getG5();
					if(s5!=null) {
						String[] arr5 = s5.split(" ");   
						int i5=0;
						for ( String ss : arr5) {
							request.setAttribute("g5"+i5, ss);
						    i5++;
						}
					}
					String s4 = lott.getG4();
					if(s4!=null) {
						String[] arr4 = s4.split(" ");   
						int i4=0;
						for ( String ss : arr4) {
							request.setAttribute("g4"+i4, ss);
						    i4++;
						}
					}
					String s3 = lott.getG3();
					if(s3!=null) {
						String[] arr3 = s3.split(" ");   
						int i3=0;
						for ( String ss : arr3) {
							request.setAttribute("g3"+i3, ss);
						    i3++;
						}
					}
					String s2 = lott.getG2();
					if(s2!=null) {
						String[] arr2 = s2.split(" ");   
						int i2=0;
						for ( String ss : arr2) {
							request.setAttribute("g2"+i2, ss);
						    i2++;
						}
					}
				}
				request.setAttribute("notDel", "nd");
				RequestDispatcher rd = request.getRequestDispatcher("manage-update.jsp");
				rd.forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(request.getParameter("idDel")!=null){
			UpdateDAO update = new UpdateDAO();
			try {
				update.delete(request.getParameter("idDel"));
				request.setAttribute("success", 1);
				RequestDispatcher rd = request.getRequestDispatcher("Controller");
				rd.forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				request.setAttribute("success", 2);
				RequestDispatcher rd = request.getRequestDispatcher("Controller");
				rd.forward(request, response);
			}
		}
		
		if(request.getParameter("listDel")!=null){
			UpdateDAO update = new UpdateDAO();
			try {
				String listID=request.getParameter("listDel").replaceAll("a"," ");
				List<Integer> a =new ArrayList<Integer>();
				try (Scanner sc = new Scanner(listID)) {
					int i=0;
					while(sc.hasNext()) {
						a.add(i, sc.nextInt());
						i++;
					}
				}
				update.delete2(a);
				request.setAttribute("success", 1);
				RequestDispatcher rd = request.getRequestDispatcher("Controller");
				rd.forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				request.setAttribute("success", 2);
				RequestDispatcher rd = request.getRequestDispatcher("Controller");
				rd.forward(request, response);
			}
		}
		
			doGet(request, response);
	}
}
