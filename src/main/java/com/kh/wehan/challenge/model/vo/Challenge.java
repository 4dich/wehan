package com.kh.wehan.challenge.model.vo;

public class Challenge {

	private String chid;
	private String userId;
	private String chName;
	private String chPicture;
	private String chContent;
	private String startDate;
	private String endDate;
	private String category;
	private String ceMethod;
	private int minPrice;
	private int maxPrice;
	private int minPerson;
	private int maxPerson;
	private String chPeople;
	
	
	public Challenge() {
		super();
	}


	public Challenge(String chid, String userId, String chName, String chPicture, String chContent, String startDate,
			String endDate, String category, String ceMethod, int minPrice, int maxPrice, int minPerson, int maxPerson,
			String chPeople) {
		super();
		this.chid = chid;
		this.userId = userId;
		this.chName = chName;
		this.chPicture = chPicture;
		this.chContent = chContent;
		this.startDate = startDate;
		this.endDate = endDate;
		this.category = category;
		this.ceMethod = ceMethod;
		this.minPrice = minPrice;
		this.maxPrice = maxPrice;
		this.minPerson = minPerson;
		this.maxPerson = maxPerson;
		this.chPeople = chPeople;
	}


	public String getChid() {
		return chid;
	}

	public void setChid(String chid) {
		this.chid = chid;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getChName() {
		return chName;
	}

	public void setChName(String chName) {
		this.chName = chName;
	}

	public String getChPicture() {
		return chPicture;
	}

	public void setChPicture(String chPicture) {
		this.chPicture = chPicture;
	}

	public String getChContent() {
		return chContent;
	}

	public void setChContent(String chContent) {
		this.chContent = chContent;
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

	public String getCeMethod() {
		return ceMethod;
	}

	public void setCeMethod(String ceMethod) {
		this.ceMethod = ceMethod;
	}

	public int getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(int minPrice) {
		this.minPrice = minPrice;
	}


	public int getMaxPrice() {
		return maxPrice;
	}

	public void setMaxPrice(int maxPrice) {
		this.maxPrice = maxPrice;
	}

	public int getMinPerson() {
		return minPerson;
	}

	public void setMinPerson(int minPerson) {
		this.minPerson = minPerson;
	}

	public int getMaxPerson() {
		return maxPerson;
	}

	public void setMaxPerson(int maxPerson) {
		this.maxPerson = maxPerson;
	}

	public String getChPeople() {
		return chPeople;
	}

	public void setChPeople(String chPeople) {
		this.chPeople = chPeople;
	}


	@Override
	public String toString() {
		return "Challenge [chid=" + chid + ", userId=" + userId + ", chName=" + chName + ", chPicture=" + chPicture
				+ ", chContent=" + chContent + ", startDate=" + startDate + ", endDate=" + endDate + ", category="
				+ category + ", ceMethod=" + ceMethod + ", minPrice=" + minPrice + ", maxPrice=" + maxPrice
				+ ", minPerson=" + minPerson + ", maxPerson=" + maxPerson + ", chPeople=" + chPeople + "]";
	}
}
