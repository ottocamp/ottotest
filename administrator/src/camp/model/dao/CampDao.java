package camp.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import camp.model.vo.CampInfo;
import grade.model.dao.GradeDao;
import static common.JDBCTemplate.*;


public class CampDao {

	private Properties prop = new Properties();
	
	public CampDao() {
		String fileName = CampDao.class.getResource("/sql/camp/camp-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<CampInfo> selectList(Connection conn) {
		Statement stmt = null;	
		ArrayList<CampInfo> cList = new ArrayList<CampInfo>();
		ResultSet rset = null;
		String sql = prop.getProperty("selectCampList");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				 
				cList.add(new CampInfo(rset.getInt(1),
										rset.getString(2),
										rset.getString(3),
										rset.getString(4),
										rset.getString(5),
										rset.getInt(6),
										rset.getDate(7),
										rset.getString(8),
										rset.getString(9),
										rset.getString(10),
										rset.getString(11),
										rset.getString(12),
										rset.getString(13),
										rset.getString(14),
										rset.getInt(15)));
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return cList;
	}

}
