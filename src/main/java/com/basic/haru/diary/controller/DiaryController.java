package com.basic.haru.diary.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// �α��� ���� ��Ʈ�ѷ�
@Controller
@RequestMapping(value = "/diary", method = RequestMethod.POST)
public class DiaryController {
	
	private static final Logger logger = LoggerFactory.getLogger(DiaryController.class);

	// �α��� �ϱ� ��Ʈ�ѷ�
	/*
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login() {
		return "main/main"; // �����ϸ� ����ȭ������ �̵� 
	}
	*/

	//���̾ ���� ��Ʈ�ѷ�
	@RequestMapping(value = "/diaryMainMove", method = RequestMethod.GET)
	public String diaryMainMove() {
		return "diary/diaryMain";
	}
}
