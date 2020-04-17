package com.kh.wehan.questions.model.vo;

public class QuestionsReply {
	
	private int qrId; // 답변 고유번호
	private int qId; // 문의사항 고유번호
	private String qrUserid; // 답변작성자
	private String qrContent;   // 내용	
	private String qrDate;  // 작성일	
	private String qrDel;  //  문의사항 답변 삭제 여부	
	
	public QuestionsReply() {
		super();
	}

	public QuestionsReply(int qrId, int qId, String qrUserid, String qrContent, String qrDate, String qrDel) {
		super();
		this.qrId = qrId;
		this.qId = qId;
		this.qrUserid = qrUserid;
		this.qrContent = qrContent;
		this.qrDate = qrDate;
		this.qrDel = qrDel;
	}

	public int getQrId() {
		return qrId;
	}

	public void setQrId(int qrId) {
		this.qrId = qrId;
	}

	public int getqId() {
		return qId;
	}

	public void setqId(int qId) {
		this.qId = qId;
	}

	public String getQrUserid() {
		return qrUserid;
	}

	public void setQrUserid(String qrUserid) {
		this.qrUserid = qrUserid;
	}

	public String getQrContent() {
		return qrContent;
	}

	public void setQrContent(String qrContent) {
		this.qrContent = qrContent;
	}

	public String getQrDate() {
		return qrDate;
	}

	public void setQrDate(String qrDate) {
		this.qrDate = qrDate;
	}

	public String getQrDel() {
		return qrDel;
	}

	public void setQrDel(String qrDel) {
		this.qrDel = qrDel;
	}

	@Override
	public String toString() {
		return "Reply [qrId=" + qrId + ", qId=" + qId + ", qrUserid=" + qrUserid + ", qrContent=" + qrContent
				+ ", qrDate=" + qrDate + ", qrDel=" + qrDel + "]";
	}
	
	
	
}