package com.kh.wehan.member.model.vo;


public class FullCalendar {
	private String title;
	private String sDate;
	private String eDate;
	private boolean allDay;
	public FullCalendar() {
		super();
	}
	public FullCalendar(String title, String sDate, String eDate, boolean allDay) {
		super();
		this.title = title;
		this.sDate = sDate;
		this.eDate = eDate;
		this.allDay = allDay;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getsDate() {
		return sDate;
	}
	public void setsDate(String sDate) {
		this.sDate = sDate;
	}
	public String geteDate() {
		return eDate;
	}
	public void seteDate(String eDate) {
		this.eDate = eDate;
	}
	public boolean isAllDay() {
		return allDay;
	}
	public void setAllDay(boolean allDay) {
		this.allDay = allDay;
	}
	@Override
	public String toString() {
		return "FullCalendar [title=" + title + ", sDate=" + sDate + ", eDate=" + eDate + ", allDay=" + allDay + "]";
	}
	
	
}
