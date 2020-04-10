package com.kh.wehan.challenge.model.vo;

public class searchChallenge {

	private String userId;
	private String chName;
	private String startDate;
	private String endDate;
	
	public searchChallenge() {
		super();
	}
	
	public searchChallenge(String userId, String chName, String startDate, String endDate) {
		super();
		this.userId = userId;
		this.chName = chName;
		this.startDate = startDate;
		this.endDate = endDate;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getChName() {
		return chName;
	}
	public void setChName(String chName) {
		this.chName = chName;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
	@Override
	public String toString() {
		return "searchChallenge [userId=" + userId + ", chName=" + chName + ", startDate=" + startDate + ", endDate="
				+ endDate + "]";
	}

	
	
}
