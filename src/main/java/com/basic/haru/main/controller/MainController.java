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
	
	// ȸ������ ��ȸ �������� �̵�
	@RequestMapping(value = "/memberJoinMove", method = RequestMethod.GET)
	public String MmmberJoinMove() {
		System.out.println("********** ȸ������ ��ȸ ȭ������ �ǳʰ��� **********");
		return "login/memberJoin";
	}
	
	@RequestMapping(value = "/logoutMove", method = RequestMethod.GET)
	public String logoutMove() {
		System.out.println("********** �α׾ƿ� �� ó�� ȭ������ ���ư��� **********");
		return "login/login";
	}
}
