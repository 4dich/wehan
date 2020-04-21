package com.kh.wehan.challenge_SR.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.challenge_SR.model.service.ChallengeService_SR;
import com.kh.wehan.challenge_SR.model.vo.ChallengeTop10;
import com.kh.wehan.challenge_SR.model.vo.ChallengerInfo;
import com.kh.wehan.member.model.vo.Member;

@Controller
public class ChallengeController_SR {
	@Autowired
	private ChallengeService_SR chalServiceSr;
	
	
	/**
	 * 챌린지 Top10리스트 가져오기
	 * @param mv
	 * @return
	 */
	@RequestMapping("getChallengeTop10List.do")
	public ModelAndView getChallengeTop10List(ModelAndView mv) {
		
		ArrayList<ChallengeTop10> list = chalServiceSr.getChallengeTop10List();
				
		if(list != null) {
			mv.addObject("list", list).setViewName("user/challenge/ch_top10List");
		} else {
			mv.addObject("msg","ERROR").addObject("msg2","오류가 있습니다.").setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	
	/**
	 * 챌린지 참여자 정보 가져오기
	 * @param list
	 * @param response
	 * @throws IOException 
	 * @throws JsonIOException 
	 */
	@RequestMapping("getChallengerList.do")
	public void getChallengerList(String[] list, HttpServletResponse response) throws JsonIOException, IOException {

		
		ArrayList<ChallengerInfo> info = chalServiceSr.getChallengerList(list);
		
		response.setContentType("application/json; charset=UTF-8");
		
		Gson gson = new Gson();
		
		gson.toJson(info, response.getWriter());
		
	}
	
	
	/**
	 * 결제 취소 시 챌린지 삭제
	 * @param chId
	 * @param mv
	 * @return
	 */
	@RequestMapping("cancleRegister.do")
	public ModelAndView cancleRegister(String chId, ModelAndView mv) {
		
		int result = chalServiceSr.cancleRegister(chId);
		
		if(result > 0) {
			mv.setViewName("redirect:chalList.do");
		} else {
			mv.addObject("msg","ERROR").addObject("msg2","오류가 있습니다.").setViewName("common/errorPage");
		}
		
		return mv;
	}
	
}
