package com.kh.wehan.message.model.vo;

public class MsgSearchCondition {
	
	private String userId;
	private String searchWord;
	
	
	public MsgSearchCondition() {
		super();
		// TODO Auto-generated constructor stub
	}


	public MsgSearchCondition(String userId, String searchWord) {
		super();
		this.userId = userId;
		this.searchWord = searchWord;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getSearchWord() {
		return searchWord;
	}


	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}


	@Override
	public String toString() {
		return "MsgSearchCondition [userId=" + userId + ", searchWord=" + searchWord + "]";
	}
	
	
}
