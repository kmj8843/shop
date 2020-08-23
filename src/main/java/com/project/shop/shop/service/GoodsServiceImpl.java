package com.project.shop.shop.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.project.shop.shop.domain.GoodsVO;
import com.project.shop.shop.mapper.GoodsMapper;

public class GoodsServiceImpl implements GoodsService {
	private SqlSession sqlSession;
	
	public GoodsServiceImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<GoodsVO> selectAll() {
		return sqlSession.getMapper(GoodsMapper.class).selectAll();
	}

	@Override
	public GoodsVO selectOne(int goodsNo) {
		return sqlSession.getMapper(GoodsMapper.class).selectOne(goodsNo);
	}
	
}
