 package com.project.shop.admin.controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.shop.admin.service.AdminServiceImpl;
import com.project.shop.admin.service.Member;
import com.project.shop.shop.domain.GoodsVO;


@Controller
public class AdminController {
	// 사진 저장을 위한 전역변수
	String goodsContentsName = "";
	
	private AdminServiceImpl adminServiceImpl;
	
	public AdminController (AdminServiceImpl adminServiceImpl) {
		this.adminServiceImpl = adminServiceImpl;
	}
	private Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	
	// 관리자페이지-회원 목록 이동
	@RequestMapping(value = "/adminMemberView.do")
	public ModelAndView noticeView(ModelAndView mv) {
		ArrayList<Member> memberList = adminServiceImpl.memberList();
		
		mv.addObject(memberList);
		mv.setViewName("admin/memberList");
		return mv;
	}
	
	
	@RequestMapping(value = "/goodsInsertView.do")
	public ModelAndView goodsInsertView(ModelAndView mv) {
		mv.setViewName("admin/goodsInsert");
		return mv;
	}

	
	@RequestMapping(value = "/goodsInsert.do")
	public String boardInsert(GoodsVO goodsVO, HttpServletRequest request,
			@RequestParam(value = "represent", required = false) MultipartFile file) {
		
		boolean flag = false;
		// 썸네일 넣기
		if(file!=null) {
			if(!file.getOriginalFilename().equals("")) {
				//썸네일 주소
				String thumbPath = saveFile(file, request);
				if(thumbPath != null) {
					goodsVO.setgThumb("\\shop\\resources\\goodsThumbIMG\\"+thumbPath);
				}
			}
		}
		logger.info("goodsVO=="+goodsVO);
		goodsVO.setgContentsPic("\\shop\\resources\\upload\\"+goodsContentsName);
		
		int result = adminServiceImpl.insertGoods(goodsVO);
		return "admin/goodsInsert";
	}
	
	
	
	// 파일업로드 - 네이버 스마트 에디터
	@RequestMapping("/fileUploader.do")
	public void photoUpload(HttpServletRequest request, HttpServletResponse response) {
		String sFileInfo = "";

		// 파일명
		String name = request.getHeader("file-name");

		// 확장자
		String ext = name.substring(name.lastIndexOf(".") + 1);

		// 파일 기본경로
		String defaultPath = request.getSession().getServletContext().getRealPath("resources");
		// 파일 기본경로 _ 상세경로
		String path = defaultPath + "\\upload" + File.separator;

		File file = new File(path);
		if (!file.exists()) {
			file.mkdirs();
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		int ranNum = (int) (Math.random() * 10000);

		String realname = sdf.format(new Date()) + ranNum + "." + ext;
		InputStream is;
		try {
			is = request.getInputStream();
			OutputStream os = new FileOutputStream(path + realname);
			int numRead;

			// 파일쓰기
			byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
			while ((numRead = is.read(b, 0, b.length)) != -1) {
				os.write(b, 0, numRead);
			}

			if (is != null) {
				is.close();
			}

			os.flush();
			os.close();
			goodsContentsName = realname;
			
			sFileInfo += "&bNewLine=true&sFileName=" + name + "&sFileURL=" + request.getContextPath()
			+ "/resources/upload/" + realname;
			
			PrintWriter print = response.getWriter();

			print.print(sFileInfo);
			print.flush();
			print.close();
			logger.info("smartEditor file upload success");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 썸네일 파일 저장
	public String saveFile(MultipartFile file, HttpServletRequest request) {

		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\goodsThumbIMG"; // 파일 경로 수정
		File folder = new File(savePath);
		if (!folder.exists()) {
			folder.mkdirs();
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); // 년월일시분초
		String originFileName = file.getOriginalFilename();
		String renameFileName = "S" + sdf.format(new Date())
				+ originFileName.substring(originFileName.lastIndexOf("."));

		String renamePath = folder + "\\" + renameFileName;


		try {
			file.transferTo(new File(renamePath)); // 전달받은 file이 rename명으로 저장
			logger.info("thumbnail file upload success");
		} catch (Exception e) {
			logger.error("파일 전송 에러 : " + e.getMessage());
		}

		return renameFileName;

	}
	
	
	// 관리자페이지-상품 목록 이동
	@RequestMapping(value = "/adminGoodsList.do")
	public ModelAndView goodList(ModelAndView mv) {
		ArrayList<GoodsVO> goodsList = adminServiceImpl.goodsList();
		logger.info("goodsList == "+goodsList);
		mv.addObject("goodsList",goodsList);
		mv.setViewName("admin/goodsList");
		return mv;
	}
}
