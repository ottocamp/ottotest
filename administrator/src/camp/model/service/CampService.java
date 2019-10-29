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

	public ArrayList<Attachment> selectAttachmentList() {
		Connection conn = getConnection();
		
		ArrayList<Attachment> aList = new CampDao().selectAttachmentList(conn);
		
		close(conn);
		
		return aList;
	}

	public int campApproval(int cNo) {
		Connection conn = getConnection();
		
		int result = new CampDao().campApproval(conn, cNo);
		
		if(result > 0) {
			commit(conn);			
		}else {
			rollback(conn);
		}
		close(conn);
		
		
		return result;
	}

}
