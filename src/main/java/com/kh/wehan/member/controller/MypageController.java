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

/**
 * @author deard
 *
 */
@Controller
public class MypageController {
	
	@Autowired
	private MypageService myService;
	
	/**
	 * 나의 마이페이지 프로필 화면
	 * @param mv
	 * @param request
	 * @return
	 */
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
	
	/**
	 * 나의 개인정보 업데이트 화면
	 * @return
	 */
	@RequestMapping("my_updateInfoView.do")
	public String my_updateInfoView() {
		return "user/mypage/my_updateInfo";
	}
	
	
	/**
	 * 나의 개인정보 업데이트
	 * @param response
	 * @param userId
	 * @param intro
	 * @param goal
	 * @param interest
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("updateProfile.do")
	public void updateGoal(HttpServletResponse response,String userId,String intro,String goal,String interest) throws JsonIOException, IOException {
		Mypage mp = new Mypage(userId,intro,goal,interest);
		
		int result = myService.updateProfile(mp);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new Gson();
		gson.toJson(mp,response.getWriter());
	}
	
	/**
	 * 나의 마이페이지 챌린지 화면
	 * @param mv
	 * @param request
	 * @return
	 */
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
		
		mv.addObject("chList", chList)
		  .addObject("ceCount", ceCount)
		  .setViewName("user/mypage/my_challenge");
		
		return mv;
	}
	
	
	/**
	 * 타인의 마이페이지 프로필 화면
	 * @param mv
	 * @param request
	 * @param otherId
	 * @return
	 */
	@RequestMapping("other_profileView.do")
	public ModelAndView other_profileView(ModelAndView mv, HttpServletRequest request, String otherId) {
		
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("loginUser");
		String userId = mem.getUserId();
		
		Follow f = new Follow(otherId, userId);
		int isFollow = myService.isFollow(f);
		
		Mypage otherPage = myService.my_profileView(otherId);
		Member otherMember = myService.selectMember(otherId);
		
		int follow = myService.followCount(otherId);
		int following = myService.followingCount(otherId);
		
		mv.addObject("otherPage", otherPage)
		  .addObject("otherMember", otherMember)
		  .addObject("myMember", mem)
		  .addObject("follow", follow)
		  .addObject("following", following)
		  .addObject("isFollow", isFollow)
		  .setViewName("user/mypage/other_profile");
		
		return mv;
	}

	
	/**
	 * 타인의 마이페이지에서 언팔로우
	 * @param response
	 * @param host
	 * @param follower
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("my_unfollow.do")
	public void my_unfollow(HttpServletResponse response, String host, String follower) throws JsonIOException, IOException {
		
		Follow f = new Follow(host, follower);
		
		int result = myService.my_unfollow(f);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new Gson();
		gson.toJson(result, response.getWriter());
	}
	
	/**
	 * 타인의 마이페이지에서 팔로우
	 * @param response
	 * @param host
	 * @param follower
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("my_follow.do")
	public void my_follow(HttpServletResponse response, String host, String follower) throws JsonIOException, IOException {
		
		Follow f = new Follow(host, follower);
		
		int result = myService.my_follow(f);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new Gson();
		gson.toJson(result, response.getWriter());
	}
	
		
	/**
	 * 타인의 마이페이지 챌린지 화면
	 * @param mv
	 * @param otherId
	 * @return
	 */
	@RequestMapping("other_challengeView.do")
	public ModelAndView other_challengeView(ModelAndView mv, String otherId) {
		
		ArrayList<Challenge> chList = myService.selectListCh(otherId);
		ArrayList<String> ceId = new ArrayList<>();
		ArrayList<Integer> ceCount = new ArrayList<>();
		
		Member otherMember = myService.selectMember(otherId);
		
		for(Challenge ch: chList) {
			ceId.add(ch.getChId());
		}
		
		int ceListCount = 0;
		
		for(int i=0; i<chList.size(); i++) {
			Certify ce = new Certify(ceId.get(i), otherId);
			ceListCount = myService.certifyCount(ce);
			ceCount.add(ceListCount);
		}
		
		mv.addObject("chList", chList)
		  .addObject("ceCount", ceCount)
		  .addObject("otherMember", otherMember)
		  .setViewName("user/mypage/other_challenge");
		
		return mv;
	}
	
	@RequestMapping("updateLvExp.do")
	public void my_updateLvExp(HttpServletRequest request, HttpServletResponse response, int myLevel, int myExp) throws JsonIOException, IOException {
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("loginUser");
		
		System.out.println(myExp);
		System.out.println(myLevel);
		
		String myId = mem.getUserId();
		Mypage mypage = new Mypage(myId, myExp, myLevel);
		
		int result = myService.my_updateLvExp(mypage);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new Gson();
		gson.toJson(result, response.getWriter());
	}
	
	@RequestMapping("my_diaryView.do")
	public String my_diaryView() {
		return "user/mypage/my_diary";
	}
	
}
