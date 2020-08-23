package com.project.shop.shop.service;

import java.util.List;

import com.project.shop.shop.domain.GoodsVO;

public interface GoodsService {
	public List<GoodsVO> selectAll();
	public GoodsVO selectOne(int goodsNo);
}
