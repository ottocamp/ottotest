package camp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import camp.model.service.CampService;
import camp.model.vo.CampInfo;

/**
 * Servlet implementation class InsertCampServlet
 */
@WebServlet("/insert.ca")
public class InsertCampServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCampServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // 1. 한글이 있을 경우 인코딩 처리
	      request.setCharacterEncoding("UTF-8");
	      
	      // 2. request에 담겨있는 값들 꺼내서 변수에 저장 및 객체 생성
	      String campName = request.getParameter("campName");
	      String operatorNo = request.getParameter("operatorNo");
	      String operatorName = request.getParameter("operatorName");
	      String campAddress = request.getParameter("campAddress");
	      String campPhone = request.getParameter("campPhone");
	      String campUrl = request.getParameter("campUrl");
	      int campTheme = Integer.parseInt(request.getParameter("campTheme"));
	      // 데이트 처리 물어보기 
	      String availableDate = request.getParameter("availableDate");
	      String posting = request.getParameter("posting");
	      String refund = request.getParameter("refund");
	      String suggestEtc = request.getParameter("suggest");
	      
	   // checkbox와 같은 경우 배열로 받게 되므로 getParameterValues 이용
	      String arr[] = request.getParameterValues("optional");
	      
	      String optional = "";
	      if(arr != null) {
	         optional = String.join(",", arr);
	      }
	      
	      // 회원번호 저장
//	      loginUser = (User)request.getSession().getAttribute("loginUser");
//	      String userNo = String.valueOf(loginUser.getUserNo());
	      
	      CampInfo c = new CampInfo();
	      
	      c.setcName(campName);
	      c.setcAddress(campAddress);
	      c.setcPhone(campPhone);
	      c.setcUrl(campUrl);
	      c.setcTheme(campTheme);
	      c.setcAvailableDate(availableDate);
	      c.setcPosting(posting);
	      c.setcRefundment(refund);
	      c.setcEtc(suggestEtc);
	      c.setcOperName(operatorName);
	      c.setcOperNO(operatorNo);
//	      c.setcUserNo(userNo);
	     
	      System.out.println(c);
	      
	      // 3-1. 캠프 insert용 서비스 메소드 전달하고 결과 받기
	      int result = new CampService().insertCamp(c);
	      
	      
	      // 4-1. 받은 결과에 따라 성공, 실패 페이지로 보내기
	      if (result > 0 ) {
	         request.getSession().setAttribute("msg", "캠핑장 등록 신청 완료");
	         request.getRequestDispatcher("views/camp/campInsertView.jsp").forward(request, response);
	      } else {
	    	  request.setAttribute("msg", "캠핑장 등록 신청 실패");
	    	  request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
