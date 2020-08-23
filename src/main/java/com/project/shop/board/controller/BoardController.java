package com.project.shop.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class BoardController {
	// 怨듭��궗�빆 �씠�룞
	@RequestMapping(value = "/noticeView.do")
	public ModelAndView noticeView(ModelAndView mv) {
		mv.setViewName("board/notice");
		return mv;
	}
	// Qna 寃뚯떆�뙋 �씠�룞
	@RequestMapping(value = "QnaView.do")
	public ModelAndView qnaView(ModelAndView mv) {
		mv.setViewName("board/qna");
		return mv;
	}
}
