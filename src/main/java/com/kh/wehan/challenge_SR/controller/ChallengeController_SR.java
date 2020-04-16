package com.kh.wehan.challenge_SR.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wehan.challenge_SR.model.service.ChallengeService_SR;
import com.kh.wehan.challenge_SR.model.vo.ChallengeTop10;

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
		
		
		
		return mv;
	}
}
