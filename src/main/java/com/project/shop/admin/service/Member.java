package com.project.shop.admin.service;

public class Member {
	private int mNo;
	private String mId;
	private String mPwd;
	private String mName;
	private String mAddress;
	private String mPhone;
	private String mRole;
	public Member(int mNo, String mId, String mPwd, String mName, String mAddress, String mPhone, String mRole) {
		super();
		this.mNo = mNo;
		this.mId = mId;
		this.mPwd = mPwd;
		this.mName = mName;
		this.mAddress = mAddress;
		this.mPhone = mPhone;
		this.mRole = mRole;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmPwd() {
		return mPwd;
	}
	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmAddress() {
		return mAddress;
	}
	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}
	public String getmPhone() {
		return mPhone;
	}
	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}
	public String getmRole() {
		return mRole;
	}
	public void setmRole(String mRole) {
		this.mRole = mRole;
	}
	@Override
	public String toString() {
		return "Member [mNo=" + mNo + ", mId=" + mId + ", mPwd=" + mPwd + ", mName=" + mName + ", mAddress=" + mAddress
				+ ", mPhone=" + mPhone + ", mRole=" + mRole + "]";
	}
	
	
}
