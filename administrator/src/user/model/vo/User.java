package user.model.vo;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1123207213548926218L;
	//12개
	private int userNo;
	private String userType;
	private String userId;
	private String userName;
	private String userPwd;
	private String phone;
	private String email;
	private Date birthDate;
	private String forignYN;
	private String status;
	private String grade;
	private Date joinDate;
	
	public User() {}

	public User(int userNo, String userType, String userId, String userName, String userPwd, String phone, String email,
			Date birthDate, String forignYN, String status, String grade, Date joinDate) {
		super();
		this.userNo = userNo;
		this.userType = userType;
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.phone = phone;
		this.email = email;
		this.birthDate = birthDate;
		this.forignYN = forignYN;
		this.status = status;
		this.grade = grade;
		this.joinDate = joinDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getForignYN() {
		return forignYN;
	}

	public void setForignYN(String forignYN) {
		this.forignYN = forignYN;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", userType=" + userType + ", userId=" + userId + ", userName=" + userName
				+ ", userPwd=" + userPwd + ", phone=" + phone + ", email=" + email + ", birthDate=" + birthDate
				+ ", forignYN=" + forignYN + ", status=" + status + ", grade=" + grade + ", joinDate=" + joinDate + "]";
	};
	
	
	
	
	

}
