package com.team5.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserVO {

	private String userId;
	private String userPw;
	private String userName;
	private String userPhone;
	private String userEmail;
	private String addrZipNum;
	private String addrBasic;
	private String addrDetail;
	private String birthday;
}
