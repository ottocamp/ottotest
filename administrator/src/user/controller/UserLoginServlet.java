package user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.model.service.UserService;
import user.model.vo.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.user")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		

		User loginUser = new UserService().loginUser(userId, userPwd);

		response.setContentType("text/html; charset=utf-8");
		

		if(loginUser != null) {

			HttpSession session = request.getSession();
			

			session.setAttribute("loginUser", loginUser);

			response.sendRedirect(request.getContextPath());
			
			
		}else { // 실패일 경우
			request.setAttribute("msg", "로그인 실패");
			

			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			view.forward(request, response);
						
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
