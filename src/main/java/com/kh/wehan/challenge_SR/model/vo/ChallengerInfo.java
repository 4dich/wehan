package com.kh.wehan.challenge_SR.model.vo;

public class ChallengerInfo {
	
	private String userId;			// 참가자 아이디
	private String userNickname;	// 참가자 닉네임
	private int userLevel;			// 참가자 레벨
	
	
	public ChallengerInfo() {
		super();
		// TODO Auto-generated constructor stub
	}


	public ChallengerInfo(String userId, String userNickname, int userLevel) {
		super();
		this.userId = userId;
		this.userNickname = userNickname;
		this.userLevel = userLevel;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserNickname() {
		return userNickname;
	}


	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}


	public int getUserLevel() {
		return userLevel;
	}


	public void setUserLevel(int userLevel) {
		this.userLevel = userLevel;
	}


	@Override
	public String toString() {
		return "ChallengerInfo [userId=" + userId + ", userNickname=" + userNickname + ", userLevel=" + userLevel + "]";
	}
	
	
	
	
}
