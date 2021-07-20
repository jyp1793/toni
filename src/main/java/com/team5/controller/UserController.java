package com.team5.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team5.command.UserVO;
import com.team5.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	//가입화면
	@RequestMapping("/userJoin")
	public String userJoin() {
		return "user/userJoin";
	}
	
	//로그인화면
	@RequestMapping("/userLogin")
	public String userLogin() {
		return "user/userLogin";
	}
	
	@RequestMapping("/userMypage")
	public String userMypage() {
		return "user/userMypage";
	}
	
	@RequestMapping("/userModify")
	public String userModify() {
		return "user/userModify";
	}
	
	@RequestMapping("/userModify_ok")
	public String userModify_ok() {
		return "user/userModify_ok";
	}
	
	@RequestMapping("/userWithdraw")
	public String userWithdraw() {
		return "user/userWithdraw";
	}

	
	@RequestMapping("/userSubscribe")
	public String userSubscribe() {
		return "user/userSubscribe";
	}
	
	//가입
	@PostMapping("/join")
	public String join(UserVO vo) {
			
		System.out.println(vo.toString());
		int result = userService.join(vo);
		System.out.println(result);
	
		
		return "redirect:/user/userLogin";
	}
	
	//중복체크
	@ResponseBody
	@PostMapping(value = "/idCheck", produces = "application/json")
	public int idCheck(@RequestBody UserVO vo) {
		
		int result = userService.idCheck(vo);
		System.out.println(result);
		
		return result;
	}

}
