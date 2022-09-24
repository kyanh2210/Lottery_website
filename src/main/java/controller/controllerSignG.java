package controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.DatatypeConverter;

import DAO.UserDAO;
import DAO.googleTokenDAO;
import bean.GooglePojo;
import bean.user;

/**
 * Servlet implementation class controllerSignG
 */
@WebServlet("/controllerSignGoogle")
public class controllerSignG extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controllerSignG() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String code = request.getParameter("code");
		    if (code == null || code.isEmpty()) {
		      RequestDispatcher dis = request.getRequestDispatcher("loginPage.jsp");
		      dis.forward(request, response);
		    } else {
		      String accessToken = googleTokenDAO.getToken(code);
		      GooglePojo googlePojo = googleTokenDAO.getUserInfo(accessToken);
		      String mail =googlePojo.getEmail();
		      int idx =mail.indexOf("@");
		      String name2 = mail.substring(0, idx);
		      String id = googlePojo.getId();
		      String email =googlePojo.getEmail();
		      request.getSession().setAttribute("id", id);
		      request.getSession().setAttribute("email", email);
		      UserDAO ud =new UserDAO();
		      MessageDigest md;
		      String idMD5="";
				try {
					md = MessageDigest.getInstance("MD5");
					md.update(id.getBytes());
					byte[] digest =md.digest();
					idMD5=DatatypeConverter.printHexBinary(digest).toUpperCase();
				} catch (NoSuchAlgorithmException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		      try {
					List<user> listU = new UserDAO().listUser();
					boolean exitUser=true;
					for(user temp :listU) {
						if(temp.getUser_pass()!=null) {
						  if(temp.getUser_pass().equals(idMD5)) {
								exitUser= false;
						  }
						}
					}
					if(exitUser) {
				      try {
						ud.signUpGF(name2, email,idMD5);
				      } catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
				      }
					}else {
						boolean tf =new UserDAO().checkNamePassGF(name2, idMD5);
						if(!tf) {
							System.out.print(idMD5 +name2);
							request.setAttribute("bd", "1");
							request.getRequestDispatcher("homeController").forward(request, response);
							return;
						}
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		      request.getSession().setAttribute("user", name2);
		      response.sendRedirect("homeController");
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
