package com.kh.wehan.message.model.vo;

public class FriendList {
	
	private String msgMyId;			// 내 아이디
	private String msgFriendId;		// 친구 아이디
	private String msgFriendImg;	// 친구 이미지
	private String msgFriendName;	// 친구 닉네임
	private int msgFollowingNum;	// 친구 팔로잉 갯수
	private int msgFollowerNum;		// 친구 팔로워 갯수
	private String msgFriendCategory;	// 친구 카테고리
	
	
	public FriendList() {
		super();
		// TODO Auto-generated constructor stub
	}


	public FriendList(String msgMyId, String msgFriendId, String msgFriendImg, String msgFriendName,
			int msgFollowingNum, int msgFollowerNum, String msgFriendCategory) {
		super();
		this.msgMyId = msgMyId;
		this.msgFriendId = msgFriendId;
		this.msgFriendImg = msgFriendImg;
		this.msgFriendName = msgFriendName;
		this.msgFollowingNum = msgFollowingNum;
		this.msgFollowerNum = msgFollowerNum;
		this.msgFriendCategory = msgFriendCategory;
	}


	public String getMsgMyId() {
		return msgMyId;
	}


	public void setMsgMyId(String msgMyId) {
		this.msgMyId = msgMyId;
	}


	public String getMsgFriendId() {
		return msgFriendId;
	}


	public void setMsgFriendId(String msgFriendId) {
		this.msgFriendId = msgFriendId;
	}


	public String getMsgFriendImg() {
		return msgFriendImg;
	}


	public void setMsgFriendImg(String msgFriendImg) {
		this.msgFriendImg = msgFriendImg;
	}


	public String getMsgFriendName() {
		return msgFriendName;
	}


	public void setMsgFriendName(String msgFriendName) {
		this.msgFriendName = msgFriendName;
	}


	public int getMsgFollowingNum() {
		return msgFollowingNum;
	}


	public void setMsgFollowingNum(int msgFollowingNum) {
		this.msgFollowingNum = msgFollowingNum;
	}


	public int getMsgFollowerNum() {
		return msgFollowerNum;
	}


	public void setMsgFollowerNum(int msgFollowerNum) {
		this.msgFollowerNum = msgFollowerNum;
	}


	public String getMsgFriendCategory() {
		return msgFriendCategory;
	}


	public void setMsgFriendCategory(String msgFriendCategory) {
		this.msgFriendCategory = msgFriendCategory;
	}


	@Override
	public String toString() {
		return "FriendList [msgMyId=" + msgMyId + ", msgFriendId=" + msgFriendId + ", msgFriendImg=" + msgFriendImg
				+ ", msgFriendName=" + msgFriendName + ", msgFollowingNum=" + msgFollowingNum + ", msgFollowerNum="
				+ msgFollowerNum + ", msgFriendCategory=" + msgFriendCategory + "]";
	}


	
	

	
	
	
}
