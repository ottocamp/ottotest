package camp.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import camp.model.dao.CampDao;
import camp.model.vo.CampInfo;
import static common.JDBCTemplate.*;

public class CampService {

	public ArrayList<CampInfo> selectList() {
		Connection conn = getConnection();
		
		ArrayList<CampInfo> cList = new CampDao().selectList(conn);
		
		close(conn);
		
		
		return cList;
	}

}
