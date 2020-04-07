package com.kh.wehan.notice.model.vo;

import java.sql.Date;

public class Notice {
		
	private int nId;
	private String nTitle;
	private String nWriter;
	private String nContent;
	private int nCount;
	private String nFile;
	private Date nDate;
	private String nStatus;
	
	
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Notice(int nId, String nTitle, String nWriter, String nContent, int nCount, String nFile, Date nDate,
			String nStatus) {
		super();
		this.nId = nId;
		this.nTitle = nTitle;
		this.nWriter = nWriter;
		this.nContent = nContent;
		this.nCount = nCount;
		this.nFile = nFile;
		this.nDate = nDate;
		this.nStatus = nStatus;
	}


	public int getnId() {
		return nId;
	}


	public void setnId(int nId) {
		this.nId = nId;
	}


	public String getnTitle() {
		return nTitle;
	}


	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}


	public String getnWriter() {
		return nWriter;
	}


	public void setnWriter(String nWriter) {
		this.nWriter = nWriter;
	}


	public String getnContent() {
		return nContent;
	}


	public void setnContent(String nContent) {
		this.nContent = nContent;
	}


	public int getnCount() {
		return nCount;
	}


	public void setnCount(int nCount) {
		this.nCount = nCount;
	}


	public String getnFile() {
		return nFile;
	}


	public void setnFile(String nFile) {
		this.nFile = nFile;
	}


	public Date getnDate() {
		return nDate;
	}


	public void setnDate(Date nDate) {
		this.nDate = nDate;
	}


	public String getnStatus() {
		return nStatus;
	}


	public void setnStatus(String nStatus) {
		this.nStatus = nStatus;
	}


	@Override
	public String toString() {
		return "Notice [nId=" + nId + ", nTitle=" + nTitle + ", nWriter=" + nWriter + ", nContent=" + nContent
				+ ", nCount=" + nCount + ", nFile=" + nFile + ", nDate=" + nDate + ", nStatus=" + nStatus + "]";
	}
	
	
	
	
}
	