package com.kh.wehan.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.member.model.service.MypageService;
import com.kh.wehan.member.model.vo.Follow;
import com.kh.wehan.member.model.vo.Member;
import com.kh.wehan.member.model.vo.Mypage;

@Controller
public class MypageController {
	
	/* String userId = "user01"; */
	
	@Autowired
	private MypageService myService;
	
	@RequestMapping("my_profileView.do")
	public ModelAndView my_profileView(ModelAndView mv, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		Member mem = (Member)session.getAttribute("loginUser");
		String userId = mem.getUserId();
		
		Mypage mypage = myService.my_profileView(userId);
		
		int follow = myService.followCount(userId);
		int following = myService.followingCount(userId);
		
		mv.addObject("mypage", mypage)
		  .addObject("follow", follow)
		  .addObject("following", following)
		  .setViewName("user/mypage/my_profile");
		
		return mv;
	}
	
	@RequestMapping("other_profileView.do")
	public ModelAndView other_profileView(ModelAndView mv, HttpServletRequest request,
			@RequestParam(name="otherId") String otherId) {
		
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("loginUser");
		String userId = mem.getUserId();
		
		System.out.println(otherId);
		Mypage otherPage = myService.my_profileView(otherId);
		Member otherMember = myService.selectMember(otherId);
		
		int follow = myService.followCount(otherId);
		int following = myService.followingCount(otherId);
		
		mv.addObject("otherPage", otherPage)
		  .addObject("otherMember", otherMember)
		  .addObject("follow", follow)
		  .addObject("following", following)
		  .setViewName("user/mypage/other_profile");
		
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
		
		ArrayList<Challenge> chList = myService.selectListCh(userId);
		
		ArrayList<String> ceId = new ArrayList<>();
		ArrayList<Integer> ceCount = new ArrayList<>();
		
		for(Challenge ch: chList) {
			ceId.add(ch.getChId());
		}
		
		int ceListCount = 0;
		
		for(int i=0; i<chList.size(); i++) {
			Certify ce = new Certify(ceId.get(i), userId);
			ceListCount = myService.certifyCount(ce);
			ceCount.add(ceListCount);
		}
			
		
		System.out.println("챌린지아이디:" + ceId);
		System.out.println("인증글 개수:" + ceCount);
		/*
		 * ArrayList cStatus = new ArrayList();
		 * 
		 * Date today = new Date(); SimpleDateFormat sdf = new
		 * SimpleDateFormat("yyyy-MM-dd");
		 * 
		 * for(Challenge c: clist) { String s2 = c.getStartDate().replace("/", "-");
		 * String e2 = c.getEndDate().replace("/", "-");
		 * 
		 * try { Date sDate = sdf.parse(s2); Date eDate = sdf.parse(e2);
		 * 
		 * if(sDate.getTime()>today.getTime()) { cStatus.add(0); }else
		 * if(sDate.getTime()<today.getTime() && eDate.getTime()>today.getTime()) {
		 * cStatus.add(1); }else { cStatus.add(2); } } catch (ParseException e) {
		 * e.printStackTrace(); } }
		 */
		
		mv.addObject("chList", chList)
		  .addObject("ceCount", ceCount)
		  .setViewName("user/mypage/my_challenge");
		
		return mv;
	}
	
	@RequestMapping("my_unfollow.do")
	public ModelAndView my_unfollow(ModelAndView mv, Follow f) {
		
		int result = myService.my_unfollow(f);
		
		String otherId = f.getHost();
		
		System.out.println("otherId:" + otherId);
		Member otherMember = myService.selectMember(otherId);
		
		int follow = myService.followCount(otherId);
		int following = myService.followingCount(otherId);
		
		if(result>0) {
			mv.addObject("otherMember", otherMember)
			  .addObject("follow", follow)
			  .addObject("following", following)
			  .setViewName("user/mypage/other_profile");
		}
		
		return mv;
	}
	
	@RequestMapping("my_diaryView.do")
	public String my_diaryView() {
		return "user/mypage/my_diary";
	}
	
}
