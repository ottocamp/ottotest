package user.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import static common.JDBCTemplate.*;

import user.model.vo.User;

public class UserDao {
	
	private Properties prop = new Properties();
	
	public UserDao() {
		String fileName = UserDao.class.getResource("/sql/user/user-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}
	
	
	

	public int userInsert(Connection con, User user) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query =  prop.getProperty("insertUser");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getUserName());
			pstmt.setString(3, user.getUserPwd());
			pstmt.setString(4, user.getPhone());
			pstmt.setString(5, user.getEmail());
			
			result= pstmt.executeUpdate();
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		
		
		
		return result;
	}

}
