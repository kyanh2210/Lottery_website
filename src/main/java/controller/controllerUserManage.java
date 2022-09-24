package controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.DatatypeConverter;

import DAO.UserDAO;
import bean.countStatusUsers;
import bean.user;

/**
 * Servlet implementation class controllerUserManage
 */
public class controllerUserManage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controllerUserManage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		if(request.getParameter("listUserStatus")!=null) {
			try {
				List<user> list = new UserDAO().statusUsers(request.getParameter("listUserStatus"));
				countStatusUsers status =new UserDAO().status();
				request.setAttribute("status", status);
				request.setAttribute("listUser", list);
				request.getRequestDispatcher("manage-user.jsp").forward(request, response);
				return;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
			try {
				List<user> listUser = new UserDAO().listUser();
				countStatusUsers status =new UserDAO().status();
				request.setAttribute("status", status);
				request.setAttribute("listUser", listUser);
				request.getRequestDispatcher("manage-user.jsp").forward(request, response);
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
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("newUser")!=null) {
			try {
				int i =new UserDAO().newUser();
				user user =new user(i, null, null, null, 1, null, null, null, null, null, null, null,null);
				request.setAttribute("user", user);
				countStatusUsers status =new UserDAO().status();
				request.setAttribute("status", status);
				request.getRequestDispatcher("userUpdate.jsp").forward(request, response);
				return;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(request.getParameter("id")!=null){
			String myHash="";
			if(request.getParameter("pass")!="") {
				String password = request.getParameter("pass");
				MessageDigest md;
				try {
					md = MessageDigest.getInstance("MD5");
					md.update(password.getBytes());
				byte[] digest = md.digest();
				myHash = DatatypeConverter.printHexBinary(digest).toUpperCase();
				} catch (NoSuchAlgorithmException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			int id=Integer.parseInt(request.getParameter("id"));
			String nick=request.getParameter("nickname");
			int role =Integer.parseInt(request.getParameter("role"));
			String name=request.getParameter("name");
			String address=request.getParameter("address");
			String phone=request.getParameter("phone");
			String mail=request.getParameter("mail");
			String day_sus=request.getParameter("day_sus");
			Date date1 = null;
			if(day_sus!="") {
				try {
					date1 = new SimpleDateFormat("yyyy-MM-dd").parse(day_sus);
				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} 
			}
			String day_unsus=request.getParameter("day_unsus");
			Date date2 = null;
			if(day_unsus!="") {
				try {
					date2 = new SimpleDateFormat("yyyy-MM-dd").parse(day_unsus);
				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			String status = request.getParameter("status");
			String reason =request.getParameter("reason");
			user user = new user(id, nick, mail, myHash, role, name, address, phone, status, reason, date1, date2,"");
			UserDAO us =new UserDAO();
			try {
				for(user temp : us.listUser()) {
					if(temp.getId()!=id) {
						if(mail!=null&&temp.getUser_mail()!=null) {
							if(temp.getUser_mail().equals(mail)) {
								request.setAttribute("user", user);
								request.setAttribute("notDel", "not");
								request.setAttribute("exitEmail", "a");
								request.getRequestDispatcher("userUpdate.jsp").forward(request, response);
								return;
							}
						}
						if(nick!=null&&temp.getUser_nickname()!=null) {
							if(temp.getUser_nickname().equals(nick)) {
								request.setAttribute("user", user);
								request.setAttribute("notDel", "not");
								request.setAttribute("exitNick", "a");
								request.getRequestDispatcher("userUpdate.jsp").forward(request, response);
								return;
							}
						}
					}
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				request.setAttribute("success", "1");
				us.updateUser(user,day_sus,day_unsus);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		if(request.getParameter("idDel1")!=null) {
			if(!request.getParameter("check").equals("not")) {
				UserDAO user =new UserDAO();
				int id = Integer.parseInt(request.getParameter("idDel1"));
				try {
					user.deleteUser(id);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		if(request.getParameter("change-id")!=null) {
			int id= Integer.parseInt(request.getParameter("change-id"));
			UserDAO user =new UserDAO();
			if(request.getParameter("change-type").equalsIgnoreCase("edit")) {
				try {
					request.setAttribute("notDel", "not");
					request.setAttribute("user", user.Users(id));
					countStatusUsers status =new UserDAO().status();
					request.setAttribute("status", status);
					request.getRequestDispatcher("userUpdate.jsp").forward(request, response);
					return;
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(request.getParameter("change-type").equalsIgnoreCase("del")) {
				try {
					user temp = user.Users(id);
					if(temp.getRole()==2) {
						request.setAttribute("tb", "admin");
					}else {
					user.deleteUser(id);
					request.setAttribute("success", "1");
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(request.getParameter("change-type").equalsIgnoreCase("unban")||request.getParameter("change-type").equalsIgnoreCase("unsus")) {
				try {
					user.updateStatusUser("normal", id);
					request.setAttribute("success", "1");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else if(request.getParameter("change-type").equalsIgnoreCase("ban")){
				try {
					user.updateStatusUser("ban", id);
					request.setAttribute("success", "1");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else if(request.getParameter("change-type").equalsIgnoreCase("sus")){
				try {
					 SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");  
					    Date date = new Date();  
					    Calendar c = Calendar.getInstance(); 
					    c.setTime(date); 
					    c.add(Calendar.DATE, 3);
					    Date date1 = c.getTime();
					    String date_sus = formatter.format(date);
					    String date_unsus = formatter.format(date1);
					user.updateStatusUser("suspend", id, date_sus, date_unsus);
					request.setAttribute("success", "1");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		if(request.getParameter("users-del")!=null) {
			String listUser=request.getParameter("users-del");
			List<Integer> listId= new ArrayList<>();
			int [] tempId= new int[listId.size()];
			UserDAO user =new UserDAO();
			try (Scanner sc = new Scanner(listUser)) {
				while(sc.hasNext()) {
					listId.add(sc.nextInt());
				}
			}

			try {
				user.deleteUsers(listId);
				request.setAttribute("success", "1");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(request.getParameter("users-role")!=null) {
			String listUser=request.getParameter("users-role");
			String role=request.getParameter("role");
			List<Integer> listId= new ArrayList<>();
			try (Scanner sc = new Scanner(listUser)) {
				while(sc.hasNext()) {
					listId.add(sc.nextInt());
				}
			}
			UserDAO user =new UserDAO();
			try {
				user.updateRoleUsers(listId, role);
				request.setAttribute("success", "1");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
		}
		if(request.getParameter("search")!=null) {
			try {
				List<user> list = new UserDAO().listUser(request.getParameter("search"));
				countStatusUsers status =new UserDAO().status();
				request.setAttribute("listUser", list);
				request.setAttribute("status", status);
				request.getRequestDispatcher("manage-user.jsp").forward(request, response);
				return;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		doGet(request, response);
	}

}
