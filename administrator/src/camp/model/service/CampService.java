package camp.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import camp.model.dao.CampDao;
import camp.model.vo.Attachment;
import camp.model.vo.CampInfo;
import static common.JDBCTemplate.*;

public class CampService {

	public ArrayList<CampInfo> selectList() {
		Connection conn = getConnection();
		
		ArrayList<CampInfo> cList = new CampDao().selectList(conn);
		
		close(conn);
		
		
		return cList;
	}
	
	// 캠핑장 정보 등록 insert 서비스
	public int insertCamp(CampInfo c) {
		Connection conn = getConnection();
		
		int result = new CampDao().insertCamp(conn, c);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	

}
