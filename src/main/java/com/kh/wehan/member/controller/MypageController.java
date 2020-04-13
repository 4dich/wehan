package com.kh.wehan.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.member.model.service.MypageService;
import com.kh.wehan.member.model.vo.Member;
import com.kh.wehan.member.model.vo.Mypage;

@Controller
public class MypageController {
	
	@Autowired
	private MypageService myService;
	
	@RequestMapping("my_profileView.do")
	public ModelAndView my_profileView(ModelAndView mv, HttpServletRequest request) {
		
		
		HttpSession session = request.getSession();
		
		Member mem = (Member)session.getAttribute("loginUser");
		String userId = mem.getUserId();
		System.out.println(mem);
		
		Mypage mypage = myService.my_profileView(userId);
		
		int follow = myService.followCount(userId);
		int following = myService.followingCount(userId);
		
		mv.addObject("mypage", mypage)
		  .addObject("follow", follow)
		  .addObject("following", following)
		  .setViewName("user/mypage/my_profile");
		
		return mv;
	}
	
	@RequestMapping("my_updateInfoView.do")
	public String my_updateInfoView() {
		return "user/mypage/my_updateInfo";
	}
	
	@RequestMapping("updateProfile.do")
	public void updateGoal(HttpServletResponse response,String userId,String intro,String goal,String interest) throws JsonIOException, IOException {
		Mypage mp = new Mypage(userId,intro,goal,interest);
		
		int result = myService.updateProfile(mp);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new Gson();
		gson.toJson(mp,response.getWriter());
	}
	
//	/**
//	 * 목표 업데이트, ajax/jackson사용, 근데 영어만 됨
//	 * @param userId
//	 * @param goal
//	 * @return
//	 * @throws UnsupportedEncodingException 
//	 */
//	@RequestMapping("updateGoal.do")
//	@ResponseBody
//	public String updateGoal(String userId, String goal){
//		Mypage mp = new Mypage(userId, goal);
//		
//		int result = myService.updateGoal(mp);
//		
//		if(result>0) {
//			return mp.getGoal();
//		}else {
//			return "error";
//		}
//	}
	
	@RequestMapping("my_challengeView.do")
	public ModelAndView my_challengeView(ModelAndView mv, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String userId = ((Member)session.getAttribute("loginUser")).getUserId();
		
		ArrayList<Challenge> clist = myService.selectListCh(userId);
		
		mv.addObject("clist", clist)
		  .setViewName("user/mypage/my_challenge");
		
		return mv;
	}
	
	@RequestMapping("my_diaryView.do")
	public String my_diaryView() {
		return "user/mypage/my_diary";
	}
	
}
