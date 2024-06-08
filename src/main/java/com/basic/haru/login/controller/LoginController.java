package com.basic.haru.login.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// �α��� ���� ��Ʈ�ѷ�
@Controller
@RequestMapping(value = "/login")
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	// �α��� �ϱ� ��Ʈ�ѷ�
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login() {
		return "main/main"; // �����ϸ� ����ȭ������ �̵� 
	}
	
	// ȸ������ �������� �̵� ��Ʈ�ѷ�
	@RequestMapping(value = "/memberJoinMove", method = RequestMethod.GET)
	public String MmmberJoinMove() {
		return "login/memberJoin";
	}
	
	// ȸ������ ��Ʈ�ѷ�
	@RequestMapping(value = "/memberJoin", method = RequestMethod.POST)
	public String memberJoin() {
		logger.info(">>>>>>  MemberJoinMoveController");
		return "main/main"; // �����ϸ� ����ȭ������ �̵� 
	}

	//���̵� ã�� �������� �̵� ��Ʈ�ѷ�
	@RequestMapping(value = "/findIdMove", method = RequestMethod.GET)
	public String findIdMove() {
		return "login/findId";
	}

	//���̵� ã�� ��Ʈ�ѷ�
	@RequestMapping(value = "/findId", method = RequestMethod.GET)
	public String findId() {
		return "login/findId";
	}

	//��A��ȣ ã�� ��Ʈ�ѷ�
	@RequestMapping(value = "/findPasswordMove", method = RequestMethod.GET)
	public String findPassword() {
		return "login/findPassword";
	}
	
}
