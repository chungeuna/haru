package com.basic.haru.diary.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// 로그인 관련 컨트롤러
@Controller
@RequestMapping(value = "/diary", method = RequestMethod.POST)
public class DiaryController {
	
	private static final Logger logger = LoggerFactory.getLogger(DiaryController.class);

	// 로그인 하기 컨트롤러
	/*
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login() {
		return "main/main"; // 성공하면 메인화면으로 이동 
	}
	*/

	//다이어리 메인 컨트롤러
	@RequestMapping(value = "/diaryMainMove", method = RequestMethod.GET)
	public String diaryMainMove() {
		return "diary/diaryMain";
	}
}
