package com.kh.wehan.message.model.vo;

public class MsgGetCondition {
	
	private String userId;
	private String friendId;
	
	
	public MsgGetCondition() {
		super();
		// TODO Auto-generated constructor stub
	}


	public MsgGetCondition(String userId, String friendId) {
		super();
		this.userId = userId;
		this.friendId = friendId;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getFriendId() {
		return friendId;
	}


	public void setFriendId(String friendId) {
		this.friendId = friendId;
	}


	@Override
	public String toString() {
		return "MsgGetCondition [userId=" + userId + ", friendId=" + friendId + "]";
	}
	
	
	
}
