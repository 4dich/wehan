package com.kh.wehan.challenge.model.vo;

public class Challenge {

	private String chId;
	private String userId;
	private String chName;
	private String chPicture;
	private String chContent;
	private String startDate;
	private String endDate;
	private String category;
	private String ceMethod;
	private int price;
	private int totalPrice;
	private int minPerson;
	private int maxPerson;
	private String chPeople;
	private int chPeopleCount;
	
	
	public Challenge() {
		super();
	}


	public Challenge(String chId, String userId, String chName, String chPicture, String chContent, String startDate,
			String endDate, String category, String ceMethod, int price, int totalPrice, int minPerson, int maxPerson,
			String chPeople, int chPeopleCount) {
		super();
		this.chId = chId;
		this.userId = userId;
		this.chName = chName;
		this.chPicture = chPicture;
		this.chContent = chContent;
		this.startDate = startDate;
		this.endDate = endDate;
		this.category = category;
		this.ceMethod = ceMethod;
		this.price = price;
		this.totalPrice = totalPrice;
		this.minPerson = minPerson;
		this.maxPerson = maxPerson;
		this.chPeople = chPeople;
		this.chPeopleCount = chPeopleCount;
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


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public int getTotalPrice() {
		return totalPrice;
	}


	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
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


	public int getChPeopleCount() {
		return chPeopleCount;
	}


	public void setChPeopleCount(int chPeopleCount) {
		this.chPeopleCount = chPeopleCount;
	}


	@Override
	public String toString() {
		return "Challenge [chId=" + chId + ", userId=" + userId + ", chName=" + chName + ", chPicture=" + chPicture
				+ ", chContent=" + chContent + ", startDate=" + startDate + ", endDate=" + endDate + ", category="
				+ category + ", ceMethod=" + ceMethod + ", price=" + price + ", totalPrice=" + totalPrice
				+ ", minPerson=" + minPerson + ", maxPerson=" + maxPerson + ", chPeople=" + chPeople
				+ ", chPeopleCount=" + chPeopleCount + "]";
	}
}
