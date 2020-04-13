package com.kh.wehan.member.model.vo;

public class FindKey {
	private String userId;
	private String key;
	
	public FindKey() {
		super();
	}

	public FindKey(String userId, String key) {
		super();
		this.userId = userId;
		this.key = key;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	@Override
	public String toString() {
		return "Certification [userId=" + userId + ", key=" + key + "]";
	}
	
	
}