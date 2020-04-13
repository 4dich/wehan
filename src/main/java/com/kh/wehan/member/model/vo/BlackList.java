package com.kh.wehan.member.model.vo;

import java.sql.Date;

public class BlackList {
	private String bId;
	private String userId;
	private String banReason;
	private int banTerm;
	private Date banDate;
	
	public BlackList() {
		super();
	}

	public BlackList(String bId, String userId, String banReason, int banTerm, Date banDate) {
		super();
		this.bId = bId;
		this.userId = userId;
		this.banReason = banReason;
		this.banTerm = banTerm;
		this.banDate = banDate;
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

	public int getBanTerm() {
		return banTerm;
	}

	public void setBanTerm(int banTerm) {
		this.banTerm = banTerm;
	}

	public Date getBanDate() {
		return banDate;
	}

	public void setBanDate(Date banDate) {
		this.banDate = banDate;
	}

	@Override
	public String toString() {
		return "BlackList [bId=" + bId + ", userId=" + userId + ", banReason=" + banReason + ", banTerm=" + banTerm
				+ ", banDate=" + banDate + "]";
	}
	
	
}
