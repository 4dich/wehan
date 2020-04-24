package com.kh.wehan.member.model.vo;

import java.sql.Date;

public class DiaryStamp {
	private String dId;
	private String userId;
	private Date enrollDate;
	private String stampYN;
	public DiaryStamp() {
		super();
	}
	public DiaryStamp(String dId, String userId, Date enrollDate, String stampYN) {
		super();
		this.dId = dId;
		this.userId = userId;
		this.enrollDate = enrollDate;
		this.stampYN = stampYN;
	}
	public String getdId() {
		return dId;
	}
	public void setdId(String dId) {
		this.dId = dId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getStampYN() {
		return stampYN;
	}
	public void setStampYN(String stampYN) {
		this.stampYN = stampYN;
	}
	@Override
	public String toString() {
		return "DiaryStamp [dId=" + dId + ", userId=" + userId + ", enrollDate=" + enrollDate + ", stampYN=" + stampYN
				+ "]";
	}
}
