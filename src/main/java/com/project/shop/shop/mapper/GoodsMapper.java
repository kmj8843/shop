package com.project.shop.shop.mapper;

import java.util.List;

import com.project.shop.shop.domain.GoodsVO;

public interface GoodsMapper {
	public List<GoodsVO> selectAll();
	public GoodsVO selectOne(int goodsNo);
}
