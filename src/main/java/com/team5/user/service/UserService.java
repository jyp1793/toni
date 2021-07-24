package com.team5.user.service;

import com.team5.command.UserVO;

public interface UserService {

	public int idCheck(UserVO vo);
	public int join(UserVO vo);
	public UserVO loginCheck(UserVO vo);
}
