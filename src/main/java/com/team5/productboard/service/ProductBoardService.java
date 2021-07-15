package com.team5.productboard.service;

import java.util.ArrayList;

import com.team5.command.ProductVO;

public interface ProductBoardService {

	public ArrayList<ProductVO> getList(); 
	public ProductVO getDetail(String pno); //상세화면
}
