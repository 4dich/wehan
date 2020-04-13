package com.kh.wehan.message.model.vo;


public class Message {
	
	private int mId;			// 메시지 ID
	private String mImg;		// Sender 이미지
	private String mSender;		// 보내는 유저 닉네임
	private String mSenderId;	// 보내는 유저 id
	private String mReceiver;	// 받는 유저 닉네임
	private String mReceiverId;	// 받는 유저 id
	private String mContent;	// 내용
	private String mDate;		// 날짜
	private int mRead;			// 읽음 여부
	private String mStatus;		// 삭제여부
	
	
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Message(int mId, String mImg, String mSender, String mSenderId, String mReceiver, String mReceiverId,
			String mContent, String mDate, int mRead, String mStatus) {
		super();
		this.mId = mId;
		this.mImg = mImg;
		this.mSender = mSender;
		this.mSenderId = mSenderId;
		this.mReceiver = mReceiver;
		this.mReceiverId = mReceiverId;
		this.mContent = mContent;
		this.mDate = mDate;
		this.mRead = mRead;
		this.mStatus = mStatus;
	}


	public int getmId() {
		return mId;
	}


	public void setmId(int mId) {
		this.mId = mId;
	}


	public String getmImg() {
		return mImg;
	}


	public void setmImg(String mImg) {
		this.mImg = mImg;
	}


	public String getmSender() {
		return mSender;
	}


	public void setmSender(String mSender) {
		this.mSender = mSender;
	}


	public String getmSenderId() {
		return mSenderId;
	}


	public void setmSenderId(String mSenderId) {
		this.mSenderId = mSenderId;
	}


	public String getmReceiver() {
		return mReceiver;
	}


	public void setmReceiver(String mReceiver) {
		this.mReceiver = mReceiver;
	}


	public String getmReceiverId() {
		return mReceiverId;
	}


	public void setmReceiverId(String mReceiverId) {
		this.mReceiverId = mReceiverId;
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


	public String getmStatus() {
		return mStatus;
	}


	public void setmStatus(String mStatus) {
		this.mStatus = mStatus;
	}


	@Override
	public String toString() {
		return "Message [mId=" + mId + ", mImg=" + mImg + ", mSender=" + mSender + ", mSenderId=" + mSenderId
				+ ", mReceiver=" + mReceiver + ", mReceiverId=" + mReceiverId + ", mContent=" + mContent + ", mDate="
				+ mDate + ", mRead=" + mRead + ", mStatus=" + mStatus + "]";
	}


	
	
	
	
}