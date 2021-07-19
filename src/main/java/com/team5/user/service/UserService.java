package com.team5.user.service;

import com.team5.command.UserVO;

public interface UserService {

	public int join(UserVO vo);
	public int idCheck(UserVO vo);
}
