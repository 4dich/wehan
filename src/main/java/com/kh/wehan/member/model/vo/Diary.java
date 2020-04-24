package com.kh.wehan.member.model.vo;

public class Diary {
	private String dId;
	private String userId;
	private String dTitle;
	private String dContent;
	private String dColor;
	private String sDate;
	private String eDate;
	private int cntStamp;
	
	public Diary() {
		super();
	}
	
	public Diary(String dId, String userId, String dTitle, String dContent, String dColor, String sDate, String eDate,
			int cntStamp) {
		super();
		this.dId = dId;
		this.userId = userId;
		this.dTitle = dTitle;
		this.dContent = dContent;
		this.dColor = dColor;
		this.sDate = sDate;
		this.eDate = eDate;
		this.cntStamp = cntStamp;
	}
	
	
	
	public Diary(String dId, String userId) {
		super();
		this.dId = dId;
		this.userId = userId;
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
	public String getdTitle() {
		return dTitle;
	}
	public void setdTitle(String dTitle) {
		this.dTitle = dTitle;
	}
	public String getdContent() {
		return dContent;
	}
	public void setdContent(String dContent) {
		this.dContent = dContent;
	}
	public String getdColor() {
		return dColor;
	}
	public void setdColor(String dColor) {
		this.dColor = dColor;
	}
	public String getsDate() {
		return sDate;
	}
	public void setsDate(String sDate) {
		this.sDate = sDate;
	}
	public String geteDate() {
		return eDate;
	}
	public void seteDate(String eDate) {
		this.eDate = eDate;
	}
	public int getCntStamp() {
		return cntStamp;
	}
	public void setCntStamp(int cntStamp) {
		this.cntStamp = cntStamp;
	}
	
	@Override
	public String toString() {
		return "Diary [dId=" + dId + ", userId=" + userId + ", dTitle=" + dTitle + ", dContent=" + dContent
				+ ", dColor=" + dColor + ", sDate=" + sDate + ", eDate=" + eDate + ", cntStamp=" + cntStamp + "]";
	}
}
