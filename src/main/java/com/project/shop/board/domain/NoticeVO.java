package com.project.shop.board.domain;

public class NoticeVO {
	private int nNo; // 공지사항 고유번호
	private String nTitle; // 공지사항 제목
	private String nContents; // 공지내용
	private String nDate; // 등록날짜
	public NoticeVO(int nNo, String nTitle, String nContents, String nDate) {
		super();
		this.nNo = nNo;
		this.nTitle = nTitle;
		this.nContents = nContents;
		this.nDate = nDate;
	}
	public int getnNo() {
		return nNo;
	}
	public void setnNo(int nNo) {
		this.nNo = nNo;
	}
	public String getnTitle() {
		return nTitle;
	}
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	public String getnContents() {
		return nContents;
	}
	public void setnContents(String nContents) {
		this.nContents = nContents;
	}
	public String getnDate() {
		return nDate;
	}
	public void setnDate(String nDate) {
		this.nDate = nDate;
	}
	@Override
	public String toString() {
		return "NoticeVO [nNo=" + nNo + ", nTitle=" + nTitle + ", nContents=" + nContents + ", nDate=" + nDate + "]";
	}
	
	
}
