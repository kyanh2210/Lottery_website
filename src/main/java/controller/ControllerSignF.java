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

import com.restfb.types.User;

import DAO.RestFB;
import DAO.UserDAO;
import bean.user;

/**
 * Servlet implementation class ControllerSignF
 */
@WebServlet("/login-facebook")
public class ControllerSignF extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerSignF() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    	      throws ServletException, IOException {
    	    String code = request.getParameter("code");
    	    
    	    if (code == null || code.isEmpty()) {
    	      RequestDispatcher dis = request.getRequestDispatcher("loginPage.jsp");
    	      dis.forward(request, response);
    	    } else {
    	      String accessToken = RestFB.getToken(code);
    	      User user = RestFB.getUserInfo(accessToken);
    	      String email = user.getEmail();
    	      String id =user.getId();
    	      String name =user.getName();
    	      
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
						ud.signUpGF(name, email,idMD5);
				      } catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
				      }
					}else {
						boolean tf =new UserDAO().checkNamePassGF(name, idMD5);
						if(!tf) {
							request.setAttribute("bd", "1");
							request.getRequestDispatcher("homeController").forward(request, response);
							return;
						}
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		      
		      request.getSession().setAttribute("email", email);
    	      request.getSession().setAttribute("id", id);
    	      request.getSession().setAttribute("user", name);
		      response.sendRedirect("homeController");
    	    }
    }
      protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
        doGet(request, response);
      }
    }