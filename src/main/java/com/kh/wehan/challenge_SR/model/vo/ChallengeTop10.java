package com.kh.wehan.challenge_SR.model.vo;

public class ChallengeTop10 {
	
	private String chId;		// 챌린지 ID
	private String userId;		// 챌린지 만든사람 ID
	private String userName;	// 챌린지 만든사람 닉네임
	private String chTitle;		// 챌린지 타이틀
	private String chPicture;	// 챌린지 이미지
	private String EndDate;		// 마감 날짜
	private int chPeopleCount;	// 참여인원 수
	
	
	public ChallengeTop10() {
		super();
		// TODO Auto-generated constructor stub
	}


	public ChallengeTop10(String chId, String userId, String userName, String chTitle, String chPicture, String endDate,
			int chPeopleCount) {
		super();
		this.chId = chId;
		this.userId = userId;
		this.userName = userName;
		this.chTitle = chTitle;
		this.chPicture = chPicture;
		EndDate = endDate;
		this.chPeopleCount = chPeopleCount;
	}


	public String getChId() {
		return chId;
	}


	public void setChId(String chId) {
		this.chId = chId;
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


	public String getChTitle() {
		return chTitle;
	}


	public void setChTitle(String chTitle) {
		this.chTitle = chTitle;
	}


	public String getChPicture() {
		return chPicture;
	}


	public void setChPicture(String chPicture) {
		this.chPicture = chPicture;
	}


	public String getEndDate() {
		return EndDate;
	}


	public void setEndDate(String endDate) {
		EndDate = endDate;
	}


	public int getChPeopleCount() {
		return chPeopleCount;
	}


	public void setChPeopleCount(int chPeopleCount) {
		this.chPeopleCount = chPeopleCount;
	}


	@Override
	public String toString() {
		return "ChallengeTop10 [chId=" + chId + ", userId=" + userId + ", userName=" + userName + ", chTitle=" + chTitle
				+ ", chPicture=" + chPicture + ", EndDate=" + EndDate + ", chPeopleCount=" + chPeopleCount + "]";
	}


	
	
}
