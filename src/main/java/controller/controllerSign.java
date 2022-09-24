package controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.DatatypeConverter;

import DAO.UserDAO;
import bean.EmailUtility;
import bean.user;

/**
 * Servlet implementation class controllerSign
 */
public class controllerSign extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String host;
    private String port;
    private String user;
    private String pass;
 
    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controllerSign() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		if(request.getParameter("logOut")!=null) {
			request.getSession().removeAttribute("user");
			Cookie[] cookie = request.getCookies();
			for(int i=0;i<cookie.length;i++) {
				if(cookie[i].getName().equals("user")||cookie[i].getName().equals("pass")) {
					cookie[i].setMaxAge(0);
					response.addCookie(cookie[i]);
				}
			}
			response.sendRedirect("homeController");
		}
		if(request.getParameter("ResetPassword")!=null) {
			String acc =(String) request.getSession().getAttribute("user");
			user U = null;
			try {
				U = new UserDAO().Account(acc);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(U!=null) {
			request.getRequestDispatcher("resetPassByUser.jsp").forward(request, response);
			}else {
			response.sendRedirect("signupPage.jsp");
			}
		}
		if(request.getParameter("Account")!=null) {
			String acc =(String) request.getSession().getAttribute("user");
			user U = null;
			try {
				U = new UserDAO().Account(acc);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(U==null) {
			request.getRequestDispatcher("signupPage.jsp").forward(request, response);
			}else {
				request.setAttribute("user", U);
				request.getRequestDispatcher("Account.jsp").forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 * 
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("newPass")!=null) {
			MessageDigest md;
			String passMD5="";
			String oldPassword="";
			String passO=request.getParameter("oldPass");
			String passN=request.getParameter("newPass");
			Object user =request.getSession().getAttribute("user");
			String U="";
			if(user!=null) {
				U=(String)user;
			}
			try {
				md = MessageDigest.getInstance("MD5");
				md.update(passN.getBytes());
				byte[] digest =md.digest();
				passMD5=DatatypeConverter.printHexBinary(digest).toUpperCase();
				md.update(passO.getBytes());
				byte[] digest2 =md.digest();
				oldPassword=DatatypeConverter.printHexBinary(digest2).toUpperCase();
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				boolean exit =new UserDAO().checkNamePass(U, oldPassword);
				if(exit) {
					new UserDAO().updatePassByUser(passMD5, U);
					request.getRequestDispatcher("loginPage.jsp").forward(request, response);
				}else {
					request.getRequestDispatcher("resetPassByUser.jsp").forward(request, response);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return;
		}
		if(request.getParameter("email-2")!=null) {
			String email = request.getParameter("email-2");
			try {
				UserDAO usr=new UserDAO();
				boolean check = usr.checkMail(email);
				if(check) {
					request.setAttribute("validMail", "a");
					request.setAttribute("mail", email);
					request.getRequestDispatcher("resetPass.jsp").forward(request, response);
					
				}else {
					String recipient = "kyanh2210@gmail.com";
			        String subject ="Reset password";
			        String content = "Here your new password: ";
			        String allowedChars = "abcdefghijklmnopqrstuvw0123456789";
			        SecureRandom random = new SecureRandom();
			        StringBuilder newPass = new StringBuilder(8);
			        for (int i = 0; i < 8; i++) {
			            newPass.append(allowedChars.charAt(random.nextInt(allowedChars.length())));
			        }
			        String passN=newPass.toString();
			        content+=newPass.toString();
			        MessageDigest md;
					String passMD5="";
					try {
						md = MessageDigest.getInstance("MD5");
						md.update(passN.getBytes());
						byte[] digest =md.digest();
						passMD5=DatatypeConverter.printHexBinary(digest).toUpperCase();
					} catch (NoSuchAlgorithmException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			        usr.updatePass(passMD5, request.getParameter("email-2"));
			        EmailUtility.sendEmail(host, port, user, pass, recipient, subject,content);
			        request.getRequestDispatcher("loginPage.jsp").forward(request, response);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return;
		}
		
		if(request.getParameter("user-4")!=null) {
			UserDAO Us = new UserDAO();
			String nickname=request.getParameter("user-4");
			String email=request.getParameter("email-4");
			String password=request.getParameter("pass-4");
			 MessageDigest md;
				String passMD5="";
				try {
					md = MessageDigest.getInstance("MD5");
					md.update(password.getBytes());
					byte[] digest =md.digest();
					passMD5=DatatypeConverter.printHexBinary(digest).toUpperCase();
				} catch (NoSuchAlgorithmException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			try {
				Us.signUp(nickname, email, passMD5);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getRequestDispatcher("loginPage.jsp").forward(request, response);
			return;
		}
		if(request.getParameter("user-1")!=null) {
			UserDAO Us =new UserDAO();
			String nickname =request.getParameter("user-1");
			String email = request.getParameter("email-1");
			String password =request.getParameter("pass-1");
			request.setAttribute("user", nickname);
			request.setAttribute("mail", email);
			try {
				if(Us.checkSignName(nickname)&&Us.checkSignEmail(email)) {
					String recipient = "kyanh2210@gmail.com";
			        String subject ="Email valid";
			        String content = "Here your code: ";
			        String allowedChars = "abcdefghijklmnopqrstuvw0123456789";
			        SecureRandom random = new SecureRandom();
			        StringBuilder newPass = new StringBuilder(8);
			        for (int i = 0; i < 8; i++) {
			            newPass.append(allowedChars.charAt(random.nextInt(allowedChars.length())));
			        }
			        String passN=newPass.toString();
			        content+=newPass.toString();
			        EmailUtility.sendEmail(host, port, user, pass, recipient, subject,content);
			        request.setAttribute("confirmCode", passN);
			        request.setAttribute("email", email);
			        request.setAttribute("user", nickname);
			        request.setAttribute("pass", password);
			        if(request.getParameter("text")!=null) {
			        	request.setAttribute("text", "Please check mail and re-enter code");
			        }
					request.getRequestDispatcher("ValidMail.jsp").forward(request, response);
					return;
				}else {
					if(!Us.checkSignName(nickname)) {
						request.setAttribute("validUser", "a");
					}
					if(!Us.checkSignEmail(email)) {
						request.setAttribute("validMail", "a");
					}
					request.getRequestDispatcher("signupPage.jsp").forward(request, response);
					return;
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(request.getParameter("idUser")!=null) {
			int id=Integer.parseInt(request.getParameter("idUser"));
			String nicknameUser=request.getParameter("nicknameUser");
			String fullnameUser=request.getParameter("fullnameUser");
			String addressUser=request.getParameter("addressUser");
			String phoneUser=request.getParameter("phoneUser");
			try {
				UserDAO ur =new UserDAO();
				if(ur.checkName(nicknameUser, id)) {
					Cookie[] cook =request.getCookies();
					for(Cookie cookies:cook) {
						if(cookies.getName().equals("user")) {
							cookies.setValue(nicknameUser);
							response.addCookie(cookies);
						}
					}
					request.getSession().setAttribute("user",nicknameUser);
					ur.updateByUser(id, nicknameUser, fullnameUser, addressUser, phoneUser);
				}else {
					request.setAttribute("error", "User name already been used!");
					request.setAttribute("user", ur.Users(id));
					request.getRequestDispatcher("Account.jsp").forward(request, response);
					return;
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("homeController");
		}
		if(request.getParameter("user")!=null&&request.getParameter("pass")!=null) {
			request.getSession().setAttribute("filted", "b");
			String nickName= request.getParameter("user");
			String pass =request.getParameter("pass");
			MessageDigest md;
			String passMD5="";
			try {
				md = MessageDigest.getInstance("MD5");
				md.update(pass.getBytes());
				byte[] digest =md.digest();
				passMD5=DatatypeConverter.printHexBinary(digest).toUpperCase();
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				UserDAO temp= new UserDAO();
				if(temp.checkNamePass2(nickName, passMD5)) {
					if(!temp.checkStatus(nickName, passMD5).equals("normal")) {
						request.setAttribute("bd", "1");
						RequestDispatcher rq = request.getRequestDispatcher("homeController");
						rq.forward(request, response);
						return;
					}
					if(request.getParameter("remember")!=null) {
						Cookie user = new Cookie("user",nickName);
						Cookie password =new Cookie("pass", pass);
						password.setMaxAge(60*60*24*1);
						user.setMaxAge(60*60*24*1);
						response.addCookie(user);
						response.addCookie(password);
						request.getSession().setAttribute("user", nickName);
					}else {
						Cookie[] cookie = request.getCookies();
						for(int i=0;i<cookie.length;i++) {
							if(cookie[i].getName().equals("user")||cookie[i].getName().equals("pass")) {
								cookie[i].setMaxAge(0);
								response.addCookie(cookie[i]);
							}
						}
						request.getSession().setAttribute("user", nickName);
					}
					RequestDispatcher rq = request.getRequestDispatcher("homeController");
					rq.forward(request, response);
					return;
				}
				request.setAttribute("wrongUserOrPass", "a");
				RequestDispatcher rq = request.getRequestDispatcher("loginPage.jsp");
				rq.forward(request, response);
				return;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(request.getParameter("signUp")!=null) {
			
		}
		doGet(request, response);
	}

}
