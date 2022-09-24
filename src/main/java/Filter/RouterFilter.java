package Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;

/**
 * Servlet Filter implementation class RouterFilter
 */
public class RouterFilter extends HttpFilter implements Filter {
       
    /**
     * @see HttpFilter#HttpFilter()
     */
    public RouterFilter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		// pass the request along the filter chain

		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		String path=req.getServletPath();
		Object user =req.getSession().getAttribute("user");
		String U ="";
		if(user!=null) {
			U=user.toString();
		}
		Cookie[] cookie = req.getCookies();
		if(cookie!=null) {
			for(int i=0; i<cookie.length;i++) {
				if(cookie[i].getName()=="user") {
					U=cookie[i].getValue();
				}
			}
		}
		boolean jsp =false;
		if(path.contains(".jsp")&&!path.contains("signupPage")&&!path.contains("loginPage")&&!path.contains("resetPass")&&!path.contains("Home")) {
			jsp=true;
		}
		if(path.contains("resetPassByUser") || path.contains("ValidMail") && U=="") {
			res.sendRedirect("homeController");
			return;
		}
		if(path.contains("Home")) {
			res.sendRedirect("homeController");
			return;
		}
		if(jsp) {
			res.sendRedirect("homeController");
			return;
		}
		if(path.contains("homeController")) {
			chain.doFilter(request, response);
			return;
		}
		int role=0;
			try {
				role =new UserDAO().getRole(U);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		if(path.contains("Controller")&&role!=2&&!path.contains("F")) {
			res.sendRedirect("homeController");
			return;
		}
		if((path.contains("AddUpdateController")||path.contains("controllerUserManage")||path.contains("controllerHistory"))&&role!=2) {
			res.sendRedirect("homeController");
			return;
		}
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
