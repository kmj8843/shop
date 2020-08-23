package com.project.shop.shop.domain;

public class GoodsVO {
	private int gNo; // 고유번호 PK
	private String gName; // 상품 이름
	private int gPrice; //상품 가격
	private String gContents; //상품 정보 내용
	private String gStock; // 재고
	private String gThumb; //썸네일 이미지 주소
	private String gContentsPic;// 내용 이미지 주소
	private String gCategory; // 카테고리
	
	
	public GoodsVO() {}
	public GoodsVO(int gNo, String gName, int gPrice, String gContents, String gStock, String gThumb,
			String gContentsPic, String gCategory) {
		super();
		this.gNo = gNo;
		this.gName = gName;
		this.gPrice = gPrice;
		this.gContents = gContents;
		this.gStock = gStock;
		this.gThumb = gThumb;
		this.gContentsPic = gContentsPic;
		this.gCategory = gCategory;
	}
	public int getgNo() {
		return gNo;
	}
	public void setgNo(int gNo) {
		this.gNo = gNo;
	}
	public String getgName() {
		return gName;
	}
	public void setgName(String gName) {
		this.gName = gName;
	}
	public int getgPrice() {
		return gPrice;
	}
	public void setgPrice(int gPrice) {
		this.gPrice = gPrice;
	}
	public String getgContents() {
		return gContents;
	}
	public void setgContents(String gContents) {
		this.gContents = gContents;
	}
	public String getgStock() {
		return gStock;
	}
	public void setgStock(String gStock) {
		this.gStock = gStock;
	}
	public String getgThumb() {
		return gThumb;
	}
	public void setgThumb(String gThumb) {
		this.gThumb = gThumb;
	}
	public String getgContentsPic() {
		return gContentsPic;
	}
	public void setgContentsPic(String gContentsPic) {
		this.gContentsPic = gContentsPic;
	}
	public String getgCategory() {
		return gCategory;
	}
	public void setgCategory(String gCategory) {
		this.gCategory = gCategory;
	}
	@Override
	public String toString() {
		return "GoodsVO [gNo=" + gNo + ", gName=" + gName + ", gPrice=" + gPrice + ", gContents=" + gContents
				+ ", gStock=" + gStock + ", gThumb=" + gThumb + ", gContentsPic=" + gContentsPic + ", gCategory="
				+ gCategory + "]";
	}

	
}
