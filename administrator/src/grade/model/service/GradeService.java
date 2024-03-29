package grade.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import grade.model.dao.GradeDao;
import grade.model.vo.UserGrade;
import static common.JDBCTemplate.*;

public class GradeService {

	public ArrayList<UserGrade> SelectUserGrade() { // 전체 회원의 등급과 결제금액을 불러오는 서비스 
		Connection conn = getConnection();
		
		ArrayList<UserGrade> gList = new GradeDao().SelectUserGrade(conn);
		
		close(conn);
		
		return gList;
	}

	public int updateGrade(int userNo, String grade) {
		Connection conn = getConnection();

		int result = new GradeDao().updateGrade(conn, userNo, grade);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

}
