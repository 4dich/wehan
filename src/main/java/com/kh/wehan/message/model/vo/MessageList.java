package com.kh.wehan.message.model.vo;

public class MessageList {
	
	private int mrId;		// 메시지 리스트 ID
	private int mId;			// 메시지 ID
	private String SenderId;	// 보낸사람ID
	private String ReceiverId;	// 받는사람ID
	private String SenderName;	// 보낸사람 닉넴
	private String ReceiverName;	// 받는사람 닉넴
	private String SenderImg;	// 보낸사람 이미지	
	private String ReceiverImg;	// 받는사람 이미지	
	private String mContent;	// 메시지 내용
	private String mDate;		// 메시지 날짜
	private int mRead;			// 안읽은 메시지 
	private int rowNum;			// 로우넘 (안씀)
	
	
	public MessageList() {
		super();
		// TODO Auto-generated constructor stub
	}


	public MessageList(int mrId, int mId, String senderId, String receiverId, String senderName, String receiverName,
			String senderImg, String receiverImg, String mContent, String mDate, int mRead, int rowNum) {
		super();
		this.mrId = mrId;
		this.mId = mId;
		SenderId = senderId;
		ReceiverId = receiverId;
		SenderName = senderName;
		ReceiverName = receiverName;
		SenderImg = senderImg;
		ReceiverImg = receiverImg;
		this.mContent = mContent;
		this.mDate = mDate;
		this.mRead = mRead;
		this.rowNum = rowNum;
	}


	public int getMrId() {
		return mrId;
	}


	public void setMrId(int mrId) {
		this.mrId = mrId;
	}


	public int getmId() {
		return mId;
	}


	public void setmId(int mId) {
		this.mId = mId;
	}


	public String getSenderId() {
		return SenderId;
	}


	public void setSenderId(String senderId) {
		SenderId = senderId;
	}


	public String getReceiverId() {
		return ReceiverId;
	}


	public void setReceiverId(String receiverId) {
		ReceiverId = receiverId;
	}


	public String getSenderName() {
		return SenderName;
	}


	public void setSenderName(String senderName) {
		SenderName = senderName;
	}


	public String getReceiverName() {
		return ReceiverName;
	}


	public void setReceiverName(String receiverName) {
		ReceiverName = receiverName;
	}


	public String getSenderImg() {
		return SenderImg;
	}


	public void setSenderImg(String senderImg) {
		SenderImg = senderImg;
	}


	public String getReceiverImg() {
		return ReceiverImg;
	}


	public void setReceiverImg(String receiverImg) {
		ReceiverImg = receiverImg;
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
		return "MessageList [mrId=" + mrId + ", mId=" + mId + ", SenderId=" + SenderId + ", ReceiverId=" + ReceiverId
				+ ", SenderName=" + SenderName + ", ReceiverName=" + ReceiverName + ", SenderImg=" + SenderImg
				+ ", ReceiverImg=" + ReceiverImg + ", mContent=" + mContent + ", mDate=" + mDate + ", mRead=" + mRead
				+ ", rowNum=" + rowNum + "]";
	}


	


	
	
	
}
