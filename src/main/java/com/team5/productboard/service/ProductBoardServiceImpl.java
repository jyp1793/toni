package com.team5.productboard.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team5.command.ProductVO;
import com.team5.productboard.mapper.ProductBoardMapper;

@Service
public class ProductBoardServiceImpl implements ProductBoardService {

	@Autowired
	private ProductBoardMapper productBoardMapper;
	
	@Override
	public ArrayList<ProductVO> getList() {
		return productBoardMapper.getList();
	}

	@Override
	public ProductVO getDetail(String pno) {
		return productBoardMapper.getDetail(pno);
	}

}
