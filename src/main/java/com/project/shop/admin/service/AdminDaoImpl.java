package com.project.shop.admin.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.project.shop.shop.domain.GoodsVO;

public class AdminDaoImpl {
	private SqlSession sqlSession;
	
	public AdminDaoImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	public ArrayList<Member> memberList() {
		return (ArrayList)sqlSession.selectList("adminMapper.memberList");
	}

	//insert
	public int insertGoods(GoodsVO goodsVO) {
		return sqlSession.insert("adminMapper.insertGoods", goodsVO);
	}


	public ArrayList<GoodsVO> goodsList() {
		return (ArrayList)sqlSession.selectList("adminMapper.goodsList");
	}

}
