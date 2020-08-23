package com.project.shop.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class BoardController {
	
	
	// 공지사항 이동
	@RequestMapping(value = "/noticeView.do")
	public ModelAndView noticeView(ModelAndView mv) {
		mv.setViewName("board/notice");
		return mv;
	}
	
	
	// Qna 게시판 이동
	@RequestMapping(value = "QnaView.do")
	public ModelAndView qnaView(ModelAndView mv) {
		mv.setViewName("board/qna");
		return mv;
	}
	

}
