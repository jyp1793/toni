package com.team5.productboard.mapper;

import java.util.ArrayList;

import com.team5.command.ProductVO;

public interface ProductBoardMapper {

	public ArrayList<ProductVO> getList();
	public ProductVO getDetail(String pno); //상세화면
}
