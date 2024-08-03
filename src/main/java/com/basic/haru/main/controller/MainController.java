package com.basic.haru.main.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// 로그인 관련 컨트롤러
@Controller
@RequestMapping(value = "/main", method = RequestMethod.POST)
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login() {
		return "redirect:/login/memberJoin"; // 성공하면 메인화면으로 이동 
	}
	
	// 회원가입 페이지로 이동 컨트롤러
	@RequestMapping(value = "/memberJoinMove", method = RequestMethod.POST)
	public String MmmberJoinMove() {
		logger.info("AAAAAAAAAAAAAAAAAAAAAAA");
		return "login/memberJoin";
	}
	
	// 회원가입 컨트롤러
	@RequestMapping(value = "/memberJoin", method = RequestMethod.GET)
	public String memberJoin() {
		logger.info(">>>>>>  MemberJoinMoveController");
		return "main/main"; // 성공하면 메인화면으로 이동 
	}
	
}
