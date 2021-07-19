package com.team5.util.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.team5.command.UserVO;

public class UserAuthHandler extends HandlerInterceptorAdapter{

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//userVO
		HttpSession session =  request.getSession(); //현재 세션
		
		UserVO userVO = (UserVO) session.getAttribute("userVO");
		
		if( userVO == null) {
			
			response.sendRedirect( request.getContextPath() + "/user/userLogin");
			return false;
			
		} else {
			return true;
		}
				
	}

	
}
