package com.kh.wehan.questions.model.vo;

class Reply {
	
	private int qId; // 번호
	private String qContent;   // 내용
	private int qUserid;    // 작성자
	private String qCreateDate;  // 작성일
	private String qModifyDate;  // 수정일
	private String qStatus; // 작성상태
	
	public Reply() {
		super();
	}

	public Reply(int qId, String qContent, int qUserid, String qCreateDate, String qModifyDate, String qStatus) {
		super();
		this.qId = qId;
		this.qContent = qContent;
		this.qUserid = qUserid;
		this.qCreateDate = qCreateDate;
		this.qModifyDate = qModifyDate;
		this.qStatus = qStatus;
	}

	public int getqId() {
		return qId;
	}

	public void setqId(int qId) {
		this.qId = qId;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public int getqUserid() {
		return qUserid;
	}

	public void setqUserid(int qUserid) {
		this.qUserid = qUserid;
	}

	public String getqCreateDate() {
		return qCreateDate;
	}

	public void setqCreateDate(String qCreateDate) {
		this.qCreateDate = qCreateDate;
	}

	public String getqModifyDate() {
		return qModifyDate;
	}

	public void setqModifyDate(String qModifyDate) {
		this.qModifyDate = qModifyDate;
	}

	public String getqStatus() {
		return qStatus;
	}

	public void setqStatus(String qStatus) {
		this.qStatus = qStatus;
	}

	@Override
	public String toString() {
		return "Reply [qId=" + qId + ", qContent=" + qContent + ", qUserid=" + qUserid + ", qCreateDate=" + qCreateDate
				+ ", qModifyDate=" + qModifyDate + ", qStatus=" + qStatus + "]";
	}
	
	
	

}
