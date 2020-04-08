package com.kh.wehan.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wehan.member.model.service.MypageService;
import com.kh.wehan.member.model.vo.Mypage;

@Controller
public class MypageController {
	
	@Autowired
	private MypageService myService;
	
	@RequestMapping("my_profileView.do")
	public ModelAndView my_profileView(ModelAndView mv) {
		
		String userId = "user02";
		Mypage mypage = myService.my_profileView(userId);
		
		int follow = 0;
		int following = 0;

		mv.addObject("mypage", mypage);
		mv.setViewName("user/mypage/my_profile");
		
		return mv;
	}
	
//	@RequestMapping("my_profileView.do")
//	public void my_profileView(HttpServletResponse response) throws JsonIOException, IOException {
//		
//		String userId = "user02";
//		
//		Mypage mypage = myService.my_profileView(userId);
//		
//		response.setContentType("application/json; charset=utf-8");
//		
//		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
//		gson.toJson(mypage ,response.getWriter());
//	}
	
	
	@RequestMapping("my_challengeView.do")
	public String my_challengeView() {
		return "user/mypage/my_challenge";
	}
	
	@RequestMapping("my_diaryView.do")
	public String my_diaryView() {
		return "user/mypage/my_diary";
	}
	
	@RequestMapping("my_updateInfoView.do")
	public String my_updateInfoView() {
		return "user/mypage/my_updateInfo";
	}
}
