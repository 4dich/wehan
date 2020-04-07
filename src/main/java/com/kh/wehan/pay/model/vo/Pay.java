package com.kh.wehan.pay.model.vo;

import java.sql.Date;

public class Pay {
  private String pId;
  private String chId;
  private String userId;
  private int price;
  private String pmethod;
  private Date pDate;
  private String pay_yn;
  private String refund_yn;
  private String pdel_yn;
 
  public Pay() {
	  super();
  }

  
  
  
public Pay(String pId, String chId, String userId, int price, String pmethod, Date pDate, String pay_yn,
		String refund_yn, String pdel_yn) {
	super();
	this.pId = pId;
	this.chId = chId;
	this.userId = userId;
	this.price = price;
	this.pmethod = pmethod;
	this.pDate = pDate;
	this.pay_yn = pay_yn;
	this.refund_yn = refund_yn;
	this.pdel_yn = pdel_yn;
}




public String getpId() {
	return pId;
}

public void setpId(String pId) {
	this.pId = pId;
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

public int getPrice() {
	return price;
}

public void setPrice(int price) {
	this.price = price;
}

public String getPmethod() {
	return pmethod;
}

public void setPmethod(String pmethod) {
	this.pmethod = pmethod;
}

public Date getpDate() {
	return pDate;
}

public void setpDate(Date pDate) {
	this.pDate = pDate;
}

public String getPay_yn() {
	return pay_yn;
}

public void setPay_yn(String pay_yn) {
	this.pay_yn = pay_yn;
}

public String getRefund_yn() {
	return refund_yn;
}

public void setRefund_yn(String refund_yn) {
	this.refund_yn = refund_yn;
}

public String getPdel_yn() {
	return pdel_yn;
}

public void setPdel_yn(String pdel_yn) {
	this.pdel_yn = pdel_yn;
}

@Override
public String toString() {
	return "Pay [pId=" + pId + ", chId=" + chId + ", userId=" + userId + ", price=" + price + ", pmethod=" + pmethod
			+ ", pDate=" + pDate + ", pay_yn=" + pay_yn + ", refund_yn=" + refund_yn + ", pdel_yn=" + pdel_yn + "]";
}
  
  
}
