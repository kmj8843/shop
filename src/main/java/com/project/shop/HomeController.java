package com.project.shop;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		/*
		 * logger.info("Welcome home! The client locale is {}.", locale);
		 * 
		 * Date date = new Date(); DateFormat dateFormat =
		 * DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		 * 
		 * String formattedDate = dateFormat.format(date);
		 * 
		 * model.addAttribute("serverTime", formattedDate );
		 * 
		 * // MAPPER logger.info("MAPPER ����");
		 * 
		 * List<HashMap<String, SampleUserVO>> selectAllResult =
		 * sampleUserDAOImpl.selectAll();
		 * 
		 * for(HashMap<String, SampleUserVO> item : selectAllResult)
		 * logger.info(item.toString());
		 * 
		 * logger.info(Integer.toString(sampleUserDAOImpl.getCount()));
		 * 
		 * 
		 * logger.info("MAPPER ��");
		 */
		System.out.println("d");
		logger.info("Welcome home! The client locale is {}.", locale);
		return "home";
	}

}
