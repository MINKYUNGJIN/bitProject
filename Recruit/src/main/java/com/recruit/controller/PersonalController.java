package com.recruit.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.recruit.domain.PUserVO;
import com.recruit.domain.ResumeVO;
import com.recruit.service.ResumeService;

/**
 * Handles requests for the application home page.
 */
@Controller

@RequestMapping("/personal/*")
public class PersonalController {
	
	private static final Logger logger = LoggerFactory.getLogger(PersonalController.class);
	
	@Inject
	private ResumeService service;

	//개인정보관리
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String indexGET(Model model) {
	      logger.info("index GET, 개인정보 확인");

	      PUserVO PUser = new PUserVO();
	      PUser.setId("jin3");// 이거는 로그인해서 id받아오도록 로그인 완성되면 합치면서 수정
	   
		return "personal/P_index";
	}	
	
	//이력서 리스트 확인
	@RequestMapping(value = "/listAll", method = RequestMethod.GET)
	public String manageGET(PUserVO puser, Model model) throws Exception {
		logger.info("show All list..........");
//		model.addAttribute("list",listAll());
		
		return "personal/P_listAll";
	}
	
	
	//이력서 작성(등록을 위한 GET방식)
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String registGET(PUserVO puser, Model model) throws Exception {
		logger.info("write get......");
		
		return "personal/P_write";
	}
	
	//이력서 작성(데이터 처리를 위한 POST)
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String registPOST(ResumeVO resume, Model model) throws Exception {
		logger.info("register post......");
	//	logger.info(resume.toString());
		
		//service.write(resume);
		
		//model.addAttribute("result", "success");
		
		return "redirect:/personal/listAll";
	}
	
	//이력서 수정
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String modifyGET(PUserVO puser, Model model) throws Exception {
		
		
		return "personal/P_detail";
	}
	
	
	//추천채용공고
	@RequestMapping(value = "/recom", method = RequestMethod.GET)
	public String recomGET(PUserVO puser, Model model) throws Exception {
		return "personal/P_recom";
	}
	//관심채용공고
	@RequestMapping(value = "/favor", method = RequestMethod.GET)
	public String favorGET(PUserVO puser, Model model) throws Exception {
		return "personal/P_favor";
	}
	//지원현황리스트
	@RequestMapping(value = "/applied", method = RequestMethod.GET)
	public String appliedGET(PUserVO puser, Model model) throws Exception {
		return "personal/P_applied"; 
	}
	
}	