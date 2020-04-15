package com.kh.wehan.message.model.vo;

public class MessageList {
	
	private String fId;			// 친구 ID
	private String fName;		// 친구 닉넴
	private String fImg;		// 친구 이미지
	private int mId;			// 메시지 ID
	private String mContent;	// 메시지 내용
	private String mDate;		// 메시지 날짜
	private int mRead;			// 안읽은 메시지 
	private int rowNum;			// 로우넘 (안씀)
	
	
	public MessageList() {
		super();
		// TODO Auto-generated constructor stub
	}


	public MessageList(String fId, String fName, String fImg, int mId, String mContent, String mDate, int mRead,
			int rowNum) {
		super();
		this.fId = fId;
		this.fName = fName;
		this.fImg = fImg;
		this.mId = mId;
		this.mContent = mContent;
		this.mDate = mDate;
		this.mRead = mRead;
		this.rowNum = rowNum;
	}


	public String getfId() {
		return fId;
	}


	public void setfId(String fId) {
		this.fId = fId;
	}


	public String getfName() {
		return fName;
	}


	public void setfName(String fName) {
		this.fName = fName;
	}


	public String getfImg() {
		return fImg;
	}


	public void setfImg(String fImg) {
		this.fImg = fImg;
	}


	public int getmId() {
		return mId;
	}


	public void setmId(int mId) {
		this.mId = mId;
	}


	public String getmContent() {
		return mContent;
	}


	public void setmContent(String mContent) {
		this.mContent = mContent;
	}


	public String getmDate() {
		return mDate;
	}


	public void setmDate(String mDate) {
		this.mDate = mDate;
	}


	public int getmRead() {
		return mRead;
	}


	public void setmRead(int mRead) {
		this.mRead = mRead;
	}


	public int getRowNum() {
		return rowNum;
	}


	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}


	@Override
	public String toString() {
		return "MessageList [fId=" + fId + ", fName=" + fName + ", fImg=" + fImg + ", mId=" + mId + ", mContent="
				+ mContent + ", mDate=" + mDate + ", mRead=" + mRead + ", rowNum=" + rowNum + "]";
	}


	
	
	
}
