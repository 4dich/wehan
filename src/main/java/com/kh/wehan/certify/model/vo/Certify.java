package com.kh.wehan.certify.model.vo;

import java.sql.Date;

public class Certify {

	
	private String ceId;
	private String chId;
	private String userId;
	private String ceContent;
	private String cePicture;
	private Date ceDate;
	private String ceDel;
	
//	챌린지
	private String chName;
	private String startDate;
	private String endDate;
	private String category;
	
//	멤버
	private String nickName;
	private String picture;
	
	public Certify() {
		super();
	}

	public Certify(String ceId, String chId, String userId, String ceContent, String cePicture, Date ceDate,
			String ceDel, String chName, String startDate, String endDate, String category, String nickName,
			String picture) {
		super();
		this.ceId = ceId;
		this.chId = chId;
		this.userId = userId;
		this.ceContent = ceContent;
		this.cePicture = cePicture;
		this.ceDate = ceDate;
		this.ceDel = ceDel;
		this.chName = chName;
		this.startDate = startDate;
		this.endDate = endDate;
		this.category = category;
		this.nickName = nickName;
		this.picture = picture;
	}

	public String getCeId() {
		return ceId;
	}

	public void setCeId(String ceId) {
		this.ceId = ceId;
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

	public String getCeContent() {
		return ceContent;
	}

	public void setCeContent(String ceContent) {
		this.ceContent = ceContent;
	}

	public String getCePicture() {
		return cePicture;
	}

	public void setCePicture(String cePicture) {
		this.cePicture = cePicture;
	}

	public Date getCeDate() {
		return ceDate;
	}

	public void setCeDate(Date ceDate) {
		this.ceDate = ceDate;
	}

	public String getCeDel() {
		return ceDel;
	}

	public void setCeDel(String ceDel) {
		this.ceDel = ceDel;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	@Override
	public String toString() {
		return "Certify [ceId=" + ceId + ", chId=" + chId + ", userId=" + userId + ", ceContent=" + ceContent
				+ ", cePicture=" + cePicture + ", ceDate=" + ceDate + ", ceDel=" + ceDel + ", chName=" + chName
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", category=" + category + ", nickName="
				+ nickName + ", picture=" + picture + "]";
	}

	
}
