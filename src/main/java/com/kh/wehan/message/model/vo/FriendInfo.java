package com.kh.wehan.message.model.vo;

public class FriendInfo {
	
	private String fId;	// 친구아이디
	private String fName;	// 친구닉네임
	private String fImg;	// 친구 이미지
	private String fIntro;	// 친구 자기소개
	
	
	public FriendInfo() {
		super();
		// TODO Auto-generated constructor stub
	}


	public FriendInfo(String fId, String fName, String fImg, String fIntro) {
		super();
		this.fId = fId;
		this.fName = fName;
		this.fImg = fImg;
		this.fIntro = fIntro;
	}


	public String getfId() {
		return fId;
	}


	public void setfId(String fId) {
		this.fId = fId;
	}


	public String getfName() {
		return fName;
	}


	public void setfName(String fName) {
		this.fName = fName;
	}


	public String getfImg() {
		return fImg;
	}


	public void setfImg(String fImg) {
		this.fImg = fImg;
	}


	public String getfIntro() {
		return fIntro;
	}


	public void setfIntro(String fIntro) {
		this.fIntro = fIntro;
	}


	@Override
	public String toString() {
		return "FriendInfo [fId=" + fId + ", fName=" + fName + ", fImg=" + fImg + ", fIntro=" + fIntro + "]";
	}
	
	
	
}
