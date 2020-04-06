package com.kh.wehan.notice.model.vo;

public class Notice {
		
	private String nTitle;
	private String nWriter;
	private String nContent;
	
	
	
	
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}




	public Notice(String nTitle, String nWriter, String nContent) {
		super();
		this.nTitle = nTitle;
		this.nWriter = nWriter;
		this.nContent = nContent;
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




	@Override
	public String toString() {
		return "Notice [nTitle=" + nTitle + ", nWriter=" + nWriter + ", nContent=" + nContent + "]";
	}


	
	
}
