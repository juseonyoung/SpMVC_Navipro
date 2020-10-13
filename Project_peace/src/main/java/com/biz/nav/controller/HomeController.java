package com.biz.nav.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biz.nav.model.MemberVO;
import com.biz.nav.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	
	@Autowired
	@Qualifier("mServiceV1")
	private MemberService mService;
	
	
	// 회원가입
	@RequestMapping(value = "/", method=RequestMethod.GET)
	public String join(@ModelAttribute("MEM_VO") MemberVO memVO, Model model) {
		
		model.addAttribute("BODY", "MEM_WRITE");
	//	model.addAttribute("BODY", "LOGIN");
		return "home";
		
	}
	// 회원가입
	@RequestMapping(value = "/", method=RequestMethod.POST)
	public String join(@ModelAttribute("MEM_VO") MemberVO memVO, Model model, String s) {
			
		log.debug(memVO.toString());
		mService.insert(memVO);
		
		
		
		return "redirect:/";
	}
	
	@ResponseBody
	// 로그인 완료 된 상태에서 가는 map page
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("MEM_VO") MemberVO loginVO, MemberVO memVO, Model model,
			HttpSession httpSession) {
		
		log.debug("정보 : " + memVO.toString());
		
		memVO = mService.login(loginVO);
		
		String retURL = "";
		
		if(memVO == null) {
			model.addAttribute("MSG", "가입한 아이디가 아닙니다👻");
			return "0";
			
		}else if(!loginVO.getN_password().equals(memVO.getN_password())) {
			model.addAttribute("MSG", "비밀번호를 잘못입력하였습니다👻");
			return "0";
			
		}else {
			httpSession.setAttribute("LOGIN", memVO);
		}
		
		model.addAttribute("BODY", retURL);
		
		
		return "1";
	}
	
	 
	@RequestMapping(value = "/map",method=RequestMethod.GET)
	public String map() {
		
		return "map";
	}
	
	@RequestMapping(value = "/mypage",method=RequestMethod.GET)
	public String mypage() {
		
		return "mypage";
	}
	
	
	
	
}