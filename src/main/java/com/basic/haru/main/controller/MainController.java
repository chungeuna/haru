package com.basic.haru.main.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// �α��� ���� ��Ʈ�ѷ�
@Controller
@RequestMapping(value = "/main", method = RequestMethod.POST)
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login() {
		return "redirect:/login/memberJoin"; // �����ϸ� ����ȭ������ �̵� 
	}
	
	// ȸ������ �������� �̵� ��Ʈ�ѷ�
	@RequestMapping(value = "/memberJoinMove", method = RequestMethod.POST)
	public String MmmberJoinMove() {
		logger.info("AAAAAAAAAAAAAAAAAAAAAAA");
		return "login/memberJoin";
	}
	
	// ȸ������ ��Ʈ�ѷ�
	@RequestMapping(value = "/memberJoin", method = RequestMethod.GET)
	public String memberJoin() {
		logger.info(">>>>>>  MemberJoinMoveController");
		return "main/main"; // �����ϸ� ����ȭ������ �̵� 
	}
	
}
