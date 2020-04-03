package com.kh.wehan.member.model.vo;

import java.sql.Date;

public class Member {
	private String userId;
	private String password;
	private String nickName;
	private String userName;
	private String birthDay;
	private String email;
	private String phone;
	private String account;
	private String picture;
	private Date joinDate;
	private String outYN;
	
	public Member() {
		super();
	}

	public Member(String userId, String password, String nickName, String userName, String birthDay, String email,
			String phone, String account, String picture, Date joinDate, String outYN) {
		super();
		this.userId = userId;
		this.password = password;
		this.nickName = nickName;
		this.userName = userName;
		this.birthDay = birthDay;
		this.email = email;
		this.phone = phone;
		this.account = account;
		this.picture = picture;
		this.joinDate = joinDate;
		this.outYN = outYN;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public String getOutYN() {
		return outYN;
	}

	public void setOutYN(String outYN) {
		this.outYN = outYN;
	}

	@Override
	public String toString() {
		return "Member [userId=" + userId + ", password=" + password + ", nickName=" + nickName + ", userName="
				+ userName + ", birthDay=" + birthDay + ", email=" + email + ", phone=" + phone + ", account=" + account
				+ ", picture=" + picture + ", joinDate=" + joinDate + ", outYN=" + outYN + "]";
	}
	
	
}
