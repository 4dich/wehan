package com.kh.wehan.member.model.vo;

import java.sql.Date;

public class BlackList {
	private String bId;
	private String userId;
	private String banReason;
	private int banDay;
	private Date banTerm;
	private Date banDate;
	private String status;
	
	public BlackList() {
		super();
	}

	public BlackList(String bId, String userId, String banReason, int banDay, Date banTerm, Date banDate,
			String status) {
		super();
		this.bId = bId;
		this.userId = userId;
		this.banReason = banReason;
		this.banDay = banDay;
		this.banTerm = banTerm;
		this.banDate = banDate;
		this.status = status;
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

	public int getBanDay() {
		return banDay;
	}

	public void setBanDay(int banDay) {
		this.banDay = banDay;
	}

	public Date getBanTerm() {
		return banTerm;
	}

	public void setBanTerm(Date banTerm) {
		this.banTerm = banTerm;
	}

	public Date getBanDate() {
		return banDate;
	}

	public void setBanDate(Date banDate) {
		this.banDate = banDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "BlackList [bId=" + bId + ", userId=" + userId + ", banReason=" + banReason + ", banDay=" + banDay
				+ ", banTerm=" + banTerm + ", banDate=" + banDate + ", status=" + status + "]";
	}

	
	
	
}