package com.kh.wehan.questions.model.vo;

public class Questions {
	
	private int qId;
	private String qUserid;
	private String qTitle;
	private String qContent;
	private int qCount;
	private String qDate;
	private String qOpen;
	private String qDel;
	
	
	public Questions() {
		super();
		
	}


	public Questions(int qId, String qUserid, String qTitle, String qContent, int qCount, String qDate, String qOpen,
			String qDel) {
		super();
		this.qId = qId;
		this.qUserid = qUserid;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.qCount = qCount;
		this.qDate = qDate;
		this.qOpen = qOpen;
		this.qDel = qDel;
	}


	public int getqId() {
		return qId;
	}


	public void setqId(int qId) {
		this.qId = qId;
	}


	public String getqUserid() {
		return qUserid;
	}


	public void setqUserid(String qUserid) {
		this.qUserid = qUserid;
	}


	public String getqTitle() {
		return qTitle;
	}


	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}


	public String getqContent() {
		return qContent;
	}


	public void setqContent(String qContent) {
		this.qContent = qContent;
	}


	public int getqCount() {
		return qCount;
	}
  
   
	public void setqCount(int qCount) {
		this.qCount = qCount;
	}
   
   
	public String getqDate() {
		return qDate;
	}
   
    
	public void setqDate(String qDate) {
		this.qDate = qDate;
	}
   
 
	public String getqOpen() {
		return qOpen;
	}


	public void setqOpen(String qOpen) {
		this.qOpen = qOpen;
	}


	public String getqDel() {
		return qDel;
	}


	public void setqDel(String qDel) {
		this.qDel = qDel;
	}


	@Override
	public String toString() {
		return "Questions [qId=" + qId + ", qUserid=" + qUserid + ", qTitle=" + qTitle + ", qContent=" + qContent
				+ ", qCount=" + qCount + ", qDate=" + qDate + ", qOpen=" + qOpen + ", qDel=" + qDel + "]";
	}


	}