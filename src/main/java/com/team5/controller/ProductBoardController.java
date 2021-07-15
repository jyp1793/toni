package com.team5.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.team5.command.ProductVO;
import com.team5.productboard.service.ProductBoardService;

@Controller
@RequestMapping("/product")
public class ProductBoardController {

	@Autowired
	private ProductBoardService productBoardService;
	
	@RequestMapping("/productList")
	public String productList(Model model) {
		
		ArrayList<ProductVO> list = new ArrayList<>();
		
		list = productBoardService.getList();
		
		model.addAttribute("list", list);
		
		return "product/productList";
	}
	
	@RequestMapping("/productDetail")
	public void productDetail(@RequestParam("pno") String pno, Model model) {

		model.addAttribute("productVO", productBoardService.getDetail(pno));
	}
	
}
