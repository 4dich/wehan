package com.kh.wehan.member.model.vo;

public class FollowerSearch {
	private String userId;
	private String search;
	public FollowerSearch() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FollowerSearch(String userId, String search) {
		super();
		this.userId = userId;
		this.search = search;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	
	@Override
	public String toString() {
		return "FollowerSearch [userId=" + userId + ", search=" + search + "]";
	}
}
