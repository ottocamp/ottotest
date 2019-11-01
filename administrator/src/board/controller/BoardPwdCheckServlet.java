package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;

/**
 * Servlet implementation class BoardPwdCheckServlet
 */
@WebServlet("/pwdCheck.bo")
public class BoardPwdCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardPwdCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pwd = (String)request.getParameter("pwd");
		int bNo = Integer.parseInt(request.getParameter("bNo"));
		int bTag = Integer.parseInt(request.getParameter("bTag"));

		String checkPwd = new BoardService().selectPwd(bNo);
		
		if(checkPwd.equals(pwd)) {
			request.setAttribute("bNo", bNo);
			request.setAttribute("bTag", bTag);
			request.getRequestDispatcher("/delete.bo").forward(request, response);
		}else {
			response.sendRedirect(request.getContextPath() + "/list.bo?b_tag=" + bTag);
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
