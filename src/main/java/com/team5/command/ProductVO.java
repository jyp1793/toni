package com.team5.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductVO {

	private String pno;
	private String p_name;
	private int p_price;
	private String p_volume;
	private String p_category;
	private String p_origin;
	private int p_alcohol;
	private String p_detailTitle;
	private String p_detail;
	private String p_imgAddr;
	private Timestamp p_regdate;
}
