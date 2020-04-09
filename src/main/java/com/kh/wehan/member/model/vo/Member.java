package com.kh.wehan.member.model.vo;

import java.sql.Date;

/**
 * @author user2
 *
 */
public class Member {
	private String userId;
	private String password;
	private String nickName;
	private String userName;
	private String birthDay;
	private String address;
	private String email;
	private String phone;
	private String account;
	private String picture;
	private Date joinDate;
	private String outYN;
	private String blacklistYN;
	
	public Member() {
		super();
	}

	public Member(String userId, String password, String nickName, String userName, String birthDay, String address,
			String email, String phone, String account, String picture, Date joinDate, String outYN,
			String blacklistYN) {
		super();
		this.userId = userId;
		this.password = password;
		this.nickName = nickName;
		this.userName = userName;
		this.birthDay = birthDay;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.account = account;
		this.picture = picture;
		this.joinDate = joinDate;
		this.outYN = outYN;
		this.blacklistYN = blacklistYN;
	}
	
	public Member(String userId, String password, String nickName, String userName, String birthDay, String address,
			String email, String phone, String account, String picture) {
		super();
		this.userId = userId;
		this.password = password;
		this.nickName = nickName;
		this.userName = userName;
		this.birthDay = birthDay;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.account = account;
		this.picture = picture;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public String getBlacklistYN() {
		return blacklistYN;
	}

	public void setBlacklistYN(String blacklistYN) {
		this.blacklistYN = blacklistYN;
	}

	@Override
	public String toString() {
		return "Member [userId=" + userId + ", password=" + password + ", nickName=" + nickName + ", userName="
				+ userName + ", birthDay=" + birthDay + ", address=" + address + ", email=" + email + ", phone=" + phone
				+ ", account=" + account + ", picture=" + picture + ", joinDate=" + joinDate + ", outYN=" + outYN
				+ ", blicklistYN=" + blacklistYN + "]";
	}
	
}
