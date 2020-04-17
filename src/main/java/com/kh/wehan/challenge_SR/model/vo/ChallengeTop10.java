package com.kh.wehan.challenge_SR.model.vo;

public class ChallengeTop10 {
	
	private String chId;		// 챌린지 ID
	private String userId;		// 챌린지 만든사람 ID
	private String userName;	// 챌린지 만든사람 닉네임
	private String chTitle;		// 챌린지 타이틀
	private String chCategory;	// 챌린지 카테고리
	private String chPicture;	// 챌린지 이미지
	private String endDate;		// 마감 날짜
	private String chPeopleList;	// 참여인원리스트
	private int chPeopleCount;	// 참여인원 수
	private int ranking;		// 순위
	
	
	public ChallengeTop10() {
		super();
		// TODO Auto-generated constructor stub
	}


	public ChallengeTop10(String chId, String userId, String userName, String chTitle, String chCategory,
			String chPicture, String endDate, String chPeopleList, int chPeopleCount, int ranking) {
		super();
		this.chId = chId;
		this.userId = userId;
		this.userName = userName;
		this.chTitle = chTitle;
		this.chCategory = chCategory;
		this.chPicture = chPicture;
		this.endDate = endDate;
		this.chPeopleList = chPeopleList;
		this.chPeopleCount = chPeopleCount;
		this.ranking = ranking;
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


	public String getChCategory() {
		return chCategory;
	}


	public void setChCategory(String chCategory) {
		this.chCategory = chCategory;
	}


	public String getChPicture() {
		return chPicture;
	}


	public void setChPicture(String chPicture) {
		this.chPicture = chPicture;
	}


	public String getEndDate() {
		return endDate;
	}


	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}


	public String getChPeopleList() {
		return chPeopleList;
	}


	public void setChPeopleList(String chPeopleList) {
		this.chPeopleList = chPeopleList;
	}


	public int getChPeopleCount() {
		return chPeopleCount;
	}


	public void setChPeopleCount(int chPeopleCount) {
		this.chPeopleCount = chPeopleCount;
	}


	public int getRanking() {
		return ranking;
	}


	public void setRanking(int ranking) {
		this.ranking = ranking;
	}


	@Override
	public String toString() {
		return "ChallengeTop10 [chId=" + chId + ", userId=" + userId + ", userName=" + userName + ", chTitle=" + chTitle
				+ ", chCategory=" + chCategory + ", chPicture=" + chPicture + ", endDate=" + endDate + ", chPeopleList="
				+ chPeopleList + ", chPeopleCount=" + chPeopleCount + ", ranking=" + ranking + "]";
	}

	
	
	
}
