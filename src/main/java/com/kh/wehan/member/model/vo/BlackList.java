package com.kh.wehan.member.model.vo;

import java.sql.Date;

public class BlackList {
	private String bId;
	private String userId;
	private String banReason;
	private int beanTern;
	private Date BanDate;
	
	public BlackList() {
		super();
	}

	public BlackList(String bId, String userId, String banReason, int beanTern, Date banDate) {
		super();
		this.bId = bId;
		this.userId = userId;
		this.banReason = banReason;
		this.beanTern = beanTern;
		BanDate = banDate;
	}

	public String getbId() {
		return bId;
	}

	public void setbId(String bId) {
		this.bId = bId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getBanReason() {
		return banReason;
	}

	public void setBanReason(String banReason) {
		this.banReason = banReason;
	}

	public int getBeanTern() {
		return beanTern;
	}

	public void setBeanTern(int beanTern) {
		this.beanTern = beanTern;
	}

	public Date getBanDate() {
		return BanDate;
	}

	public void setBanDate(Date banDate) {
		BanDate = banDate;
	}

	@Override
	public String toString() {
		return "BlackList [bId=" + bId + ", userId=" + userId + ", banReason=" + banReason + ", beanTern=" + beanTern
				+ ", BanDate=" + BanDate + "]";
	}
	
	
}
