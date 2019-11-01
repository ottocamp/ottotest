package camp.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import camp.model.vo.Attachment;
import camp.model.service.CampService;
import camp.model.vo.CampInfo;
import common.MyFileRenamePolicy;
import user.model.vo.User;

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
	      User loginUser = (User)request.getSession().getAttribute("loginUser");
	      int userNo = loginUser.getUserNo();
	      
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
	      c.setcOption(optional);
	      c.setcUserNo(userNo);
	     
	      System.out.println(c);
	      
	      // 3-1. 캠프 insert용 서비스 메소드 전달하고 결과 받기
	      int result = new CampService().insertCamp(c);
	      // 3-2. Attachment insert용 서비스 메소드 전달하고 결과 받기
	      
	      if(ServletFileUpload.isMultipartContent(request)) {
	    	  int maxSize = 1024 * 1024 * 10;
	    	  
	    	  String root = request.getSession().getServletContext().getRealPath("/");
	    	  
	    	  String savePath = root + "/resources/camp_uploadFiles/";
	    	  
	    	  MultipartRequest multiRequest 
				= new MultipartRequest(request, savePath, maxSize, "UTF-8");
	    	  
	    	  ArrayList<String> changeFiles = new ArrayList<String>();
	    	  
	    	  ArrayList<String> originFiles = new ArrayList<String>();
	    	  
	    	  Enumeration<String> files = multiRequest.getFileNames();  
	    	  
	    	  while(files.hasMoreElements()) {
					
					//files에 담겨있는 파일 리스트들의 name 값을 반환
					String name = files.nextElement();
					
					// 해당 파일이 null이 아닌 경우
					if(multiRequest.getFilesystemName(name) != null) {
						// getFilesystemName() - MyRenamePolicy의 rename 메소드에서
						// 작성한대로 rename 된 파일명
						String changeName = multiRequest.getFilesystemName(name);
						
						// getOriginalFileName() - 실제 사용자가 업로드 할 때 파일명
						String originName = multiRequest.getOriginalFileName(name);
						
						changeFiles.add(changeName);
						originFiles.add(originName);
					}
				}
	    	  
	    	  ArrayList<Attachment> fileList = new ArrayList<>();
				// 전송 순서 역순으로 파일이 changeFiles, originFiles에 저장 되었기 때문
				// 에 반복문을 역으로 수행함
				for(int i = originFiles.size() - 1; i >= 0; i--) {
					
					Attachment at = new Attachment();
					at.setFilePath(savePath);
					at.setOriginName(originFiles.get(i));
					at.setChangeName(changeFiles.get(i));
					
					// 타이틀 이미지인 경우 fileLevel을 0으로, 일반 이미지면 fileLevel이 1
					// 타이틀 이미지가 originFiles에서 마지막 인덱스이기 때문에
					if(i == originFiles.size() -1) {
						at.setcType(2);
					}else if (i == 0){
						at.setcType(3);
					} else {
						at.setcType(1);
					}
					
					fileList.add(at);
				}
				
				// 4. 사진 게시판 작성용 비즈니스 로직을 처리할 서비스 요청
				// (board 객체, Attachment 리스트 전달)
//				int result2 = new CampService().insertCampPics(c, fileList);
//				
//				if(result2 > 0) {
//					response.sendRedirect("insert.ca");
//				}else {
//					// 실패 시 저장된 사진 삭제
//					for(int i = 0; i < changeFiles.size(); i++) {
//						// 파일 시스템에 저장 된 이름으로 파일 객체 생성함
//						File failedFile = new File(savePath + changeFiles.get(i));
//						failedFile.delete();
//					}
//					
//				}
	    	  
	    	  
	    	  
	    	  
	      }
	      
	      
	      
	      
	      
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
