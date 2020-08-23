package com.project.shop.shop.domain;

public class OrderVO {
	private int oNo; // 구매고유번호
	private int mNo; // 구매회원번호
	private int gNo; // 상품번호
	private int oQuan; // 구매개수
	private int oPrice; // 상품 가격
	private String oIsDel; // 
	public int getoNo() {
		return oNo;
	}
	public void setoNo(int oNo) {
		this.oNo = oNo;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public int getgNo() {
		return gNo;
	}
	public void setgNo(int gNo) {
		this.gNo = gNo;
	}
	public int getoQuan() {
		return oQuan;
	}
	public void setoQuan(int oQuan) {
		this.oQuan = oQuan;
	}
	public int getoPrice() {
		return oPrice;
	}
	public void setoPrice(int oPrice) {
		this.oPrice = oPrice;
	}
	public String getoIsDel() {
		return oIsDel;
	}
	public void setoIsDel(String oIsDel) {
		this.oIsDel = oIsDel;
	}
	public OrderVO(int oNo, int mNo, int gNo, int oQuan, int oPrice, String oIsDel) {
		super();
		this.oNo = oNo;
		this.mNo = mNo;
		this.gNo = gNo;
		this.oQuan = oQuan;
		this.oPrice = oPrice;
		this.oIsDel = oIsDel;
	}
	@Override
	public String toString() {
		return "OrderVO [oNo=" + oNo + ", mNo=" + mNo + ", gNo=" + gNo + ", oQuan=" + oQuan + ", oPrice=" + oPrice
				+ ", oIsDel=" + oIsDel + "]";
	}
	
	
	
}
