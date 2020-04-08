package com.kh.wehan.message.model.vo;


public class Message {
	
	private int mId;
	private String mSender;
	private String mReceiver;
	private String mContent;
	private String mDate;
	private int mRead;
	private String mStatus;
	
	
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Message(int mId, String mSender, String mReceiver, String mContent, String mDate, int mRead,
			String mStatus) {
		super();
		this.mId = mId;
		this.mSender = mSender;
		this.mReceiver = mReceiver;
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


	public String getmSender() {
		return mSender;
	}


	public void setmSender(String mSender) {
		this.mSender = mSender;
	}


	public String getmReceiver() {
		return mReceiver;
	}


	public void setmReceiver(String mReceiver) {
		this.mReceiver = mReceiver;
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
		return "Message [mId=" + mId + ", mSender=" + mSender + ", mReceiver=" + mReceiver + ", mContent=" + mContent
				+ ", mDate=" + mDate + ", mRead=" + mRead + ", mStatus=" + mStatus + "]";
	}
	
	
	
	
	
}