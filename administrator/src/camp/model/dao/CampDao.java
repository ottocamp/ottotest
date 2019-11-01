package camp.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
										rset.getString(7),
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


	public int insertCamp(Connection conn, CampInfo c) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertCamp");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, c.getcName());
			pstmt.setString(2, c.getcAddress());
			pstmt.setString(3, c.getcPhone());
			pstmt.setString(4, c.getcUrl());
			pstmt.setInt(5, c.getcTheme());
			pstmt.setString(6, c.getcAvailableDate());
			pstmt.setString(7, c.getcPosting());
			pstmt.setString(8, c.getcRefundment());
			pstmt.setString(9, c.getcEtc());
			pstmt.setString(10, c.getcOperName());
			pstmt.setString(11, c.getcOperNO());
			pstmt.setString(12, c.getcOption());
			pstmt.setInt(13, c.getcUserNo());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
		
	}

}
