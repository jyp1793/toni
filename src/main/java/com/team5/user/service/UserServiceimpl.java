package com.team5.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team5.command.UserVO;
import com.team5.user.mapper.UserMapper;

@Service("userService")
public class UserServiceimpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int join(UserVO vo) {
		return userMapper.join(vo);
	}

	@Override
	public int idCheck(UserVO vo) {
		return userMapper.idCheck(vo);
	}


	

}
