package user.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
		String ip = request.getParameter("ip");
		String country = request.getParameter("country");

		User loginUser = new UserService().loginUser(userId, userPwd);


		response.setContentType("text/html; charset=utf-8");
		

		if(loginUser != null) {
			
			if(loginUser.getForignYN().equalsIgnoreCase("y")) {
				//해외로그인 가능할때
				
				int uno = loginUser.getUserNo();
				
				int result = new UserService().ipInfo(uno,ip,country,"성공");
				

				HttpSession session = request.getSession();
				
				
				session.setAttribute("loginUser", loginUser);
				System.out.println(loginUser);
				PrintWriter out = response.getWriter();

				out.print("success");
				
			}else {
				//해외 로그인 불가설정 했을 시
				
				if(!country.equalsIgnoreCase("kr")) {
					//로그인페이지에서 갖고온 country가
					
					
				}
				
				
			}
			


			
		}else { 
			
			
			User searchUser = new UserService().searchUser(userId);
			
			if(searchUser != null) {
				//해당 아이디가 있으므로 비번이 틀린 경우 
				int result = new UserService().ipInfo(searchUser.getUserNo(),ip,country,"비밀번호 불일치");	
				PrintWriter out = response.getWriter();
				out.print("pwdError");
			}else {
				PrintWriter out = response.getWriter();
				out.print("noUser");
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
