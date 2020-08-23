package com.project.shop.admin.service;

import java.util.ArrayList;

import com.project.shop.shop.domain.GoodsVO;

public class AdminServiceImpl implements AdminService{
	

	private AdminDaoImpl adminDaoImpl;	

	public AdminServiceImpl (AdminDaoImpl adminDaoImpl) {
		this.adminDaoImpl = adminDaoImpl;
	}

	
	//멤버리스트
	@Override
	public ArrayList<Member> memberList() {
		
		return adminDaoImpl.memberList();
	}

	// 상품 insert
	public int insertGoods(GoodsVO goodsVO) {
		// TODO Auto-generated method stub
		return adminDaoImpl.insertGoods(goodsVO);
	}

	
	// 상품 목록
	public ArrayList<GoodsVO> goodsList() {
		// TODO Auto-generated method stub
		return adminDaoImpl.goodsList();
	}

}
