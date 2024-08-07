package com.basic.haru.login.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// 로그인 관련 컨트롤러
@Controller
@RequestMapping(value = "/login", method = RequestMethod.POST)
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	// 로그인 하기 컨트롤러
	/*
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login() {
		return "main/main"; // 성공하면 메인화면으로 이동 
	}
	*/
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login() {
		return "redirect:/login/memberJoin"; // 성공하면 메인화면으로 이동 
	}
	
	// 회원가입 페이지로 이동 컨트롤러
	@RequestMapping(value = "/memberJoinMove", method = RequestMethod.GET)
	public String MmmberJoinMove() {
		return "login/memberJoin";
	}
	
	// 회원가입 컨트롤러
	@RequestMapping(value = "/memberJoin", method = RequestMethod.GET)
	public String memberJoin() {
		logger.info(">>>>>>  MemberJoinMoveController");
		return "main/main"; // 성공하면 메인화면으로 이동 
	}

	//아이디 찾기 페이지로 이동 컨트롤러
	@RequestMapping(value = "/findIdMove", method = RequestMethod.GET)
	public String findIdMove() {
		return "login/findId";
	}

	//아이디 찾기 컨트롤러
	@RequestMapping(value = "/findId", method = RequestMethod.GET)
	public String findId() {
		return "login/findId";
	}

	//비밃번호 찾기 컨트롤러
	@RequestMapping(value = "/findPasswordMove", method = RequestMethod.GET)
	public String findPassword() {
		return "login/findPassword";
	}
	
}
