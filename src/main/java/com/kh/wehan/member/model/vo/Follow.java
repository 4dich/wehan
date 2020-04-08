package com.kh.wehan.member.model.vo;

public class Follow {
	private String host;
	private String follower;
	
	public Follow() {
		super();
	}
	
	public Follow(String host, String follower) {
		super();
		this.host = host;
		this.follower = follower;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public String getFollower() {
		return follower;
	}

	public void setFollower(String follower) {
		this.follower = follower;
	}

	@Override
	public String toString() {
		return "Follow [host=" + host + ", follower=" + follower + "]";
	}
	
	
}
