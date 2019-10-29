package user.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static common.JDBCTemplate.*;

import user.model.dao.UserDao;
import user.model.vo.IpInfo;
import user.model.vo.User;


public class UserService {

	public int userInsert(User user) {
		Connection con = getConnection();
		
		int result = new UserDao().userInsert(con,user);
		
		if(result>0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		

		return result;
	}

	public User loginUser(String userId, String userPwd) {
		
		Connection con = getConnection();
		
		User user = new UserDao().loginUser(con, userId, userPwd);
		
		
		
		
		return user;
	}

	public int loginBlock(int userNo, String flag) {
		
		Connection con = getConnection();
		
		int result = new UserDao().loginBlock(con,userNo,flag);
		
		if(result>0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		
		
		return result;
	}

	public int ipInfo(int uno,String ip, String country,String flag) {
		Connection con = getConnection();
		int result = new UserDao().ipInfo(con,uno,ip,country,flag);
		
		if(result>0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		
		
		return result;
	}

	public ArrayList<IpInfo> selectIpInfo(int uno) {
		
		Connection con = getConnection();
		
		ArrayList<IpInfo> ipinfo = new UserDao().selectIpInfo(con,uno);
		
		close(con);
		
		return ipinfo;
	}

	public String selectFlag(int uno) {
		Connection con = getConnection();
		
		String flag = new UserDao().selectFlag(con,uno);
		
		close(con);
		
		return flag;
	}

	public User searchUser(String userId) {
		
		Connection con = getConnection();
		
		User searchUser = new UserDao().searchUser(con,userId);
		
		close(con);
		
		return searchUser;
	}
	
	
	

}
