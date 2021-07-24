package com.team5.user.mapper;

import com.team5.command.UserVO;

public interface UserMapper {

	public int join(UserVO vo);
	public int idCheck(UserVO vo);
	public UserVO loginCheck(UserVO vo);
}
