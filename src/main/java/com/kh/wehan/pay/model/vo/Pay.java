package com.kh.wehan.pay.model.vo;

import java.sql.Date;
import java.util.ArrayList;

import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.member.model.vo.Member;

public class Pay {
  private String pId;
  private String chId;
  private String userId;
  private int price;
  private String pmethod;
  private String chName;
  private Date pDate;
  private String refund_yn;
  private String pdel_yn;
  private ArrayList<Member> mList;
  private ArrayList<Challenge> chList; // 챌린지 에서 받아오는 정보
  
  public Pay() {
	  super();
  }

public Pay(String pId, String chId, String userId, int price, String pmethod, String chName, Date pDate,
		String refund_yn, String pdel_yn, ArrayList<Member> mList, ArrayList<Challenge> chList) {
	super();
	this.pId = pId;
	this.chId = chId;
	this.userId = userId;
	this.price = price;
	this.pmethod = pmethod;
	this.chName = chName;
	this.pDate = pDate;
	this.refund_yn = refund_yn;
	this.pdel_yn = pdel_yn;
	this.mList = mList;
	this.chList = chList;
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

public String getChName() {
	return chName;
}

public void setChName(String chName) {
	this.chName = chName;
}

public Date getpDate() {
	return pDate;
}

public void setpDate(Date pDate) {
	this.pDate = pDate;
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

public ArrayList<Member> getmList() {
	return mList;
}

public void setmList(ArrayList<Member> mList) {
	this.mList = mList;
}

public ArrayList<Challenge> getChList() {
	return chList;
}

public void setChList(ArrayList<Challenge> chList) {
	this.chList = chList;
}

@Override
public String toString() {
	return "Pay [pId=" + pId + ", chId=" + chId + ", userId=" + userId + ", price=" + price + ", pmethod=" + pmethod
			+ ", chName=" + chName + ", pDate=" + pDate + ", refund_yn=" + refund_yn + ", pdel_yn=" + pdel_yn
			+ ", mList=" + mList + ", chList=" + chList + "]";
}


}