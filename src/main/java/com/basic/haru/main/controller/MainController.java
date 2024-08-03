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
	
	// 회원정보 조회 페이지로 이동
	@RequestMapping(value = "/memberJoinMove", method = RequestMethod.GET)
	public String MmmberJoinMove() {
		System.out.println("********** 회원정보 조회 화면으로 건너가기 **********");
		return "login/memberJoin";
	}
	
	@RequestMapping(value = "/logoutMove", method = RequestMethod.GET)
	public String logoutMove() {
		System.out.println("********** 로그아웃 후 처음 화면으로 돌아가기 **********");
		return "login/login";
	}
}
