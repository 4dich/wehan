package com.kh.wehan.certify.model.vo;

import java.sql.Date;

public class CertifyReply {

	private String crId;
	private String ceId;
	private String userId;
	private String ccContent;
	private Date ccDate;
	private String ccDel;
	private String picture;
	private String nickName;
	
	public CertifyReply() {
		super();
	}

	
	public CertifyReply(String crId, String ceId, String userId, String ccContent, Date ccDate, String ccDel,
			String picture,String nickName) {
		super();
		this.crId = crId;
		this.ceId = ceId;
		this.userId = userId;
		this.ccContent = ccContent;
		this.ccDate = ccDate;
		this.ccDel = ccDel;
		this.picture = picture;
		this.nickName = nickName;
	}

	public String getNickName() {
		return nickName;
	}


	public void setNickName(String nickName) {
		this.nickName = nickName;
	}


	public String getCrId() {
		return crId;
	}

	public void setCrId(String crId) {
		this.crId = crId;
	}

	public String getCeId() {
		return ceId;
	}

	public void setCeId(String ceId) {
		this.ceId = ceId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCcContent() {
		return ccContent;
	}

	public void setCcContent(String ccContent) {
		this.ccContent = ccContent;
	}

	public Date getCcDate() {
		return ccDate;
	}

	public void setCcDate(Date ccDate) {
		this.ccDate = ccDate;
	}

	public String getCcDel() {
		return ccDel;
	}

	public void setCcDel(String ccDel) {
		this.ccDel = ccDel;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	@Override
	public String toString() {
		return "CertifyReply [crId=" + crId + ", ceId=" + ceId + ", userId=" + userId + ", ccContent=" + ccContent
				+ ", ccDate=" + ccDate + ", ccDel=" + ccDel + ", picture=" + picture + "]";
	}
	
	
}
