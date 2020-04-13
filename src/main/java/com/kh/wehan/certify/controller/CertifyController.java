package com.kh.wehan.certify.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wehan.certify.model.service.CertifyService;
import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.common.Pagination;
import com.kh.wehan.common.model.vo.PageInfo;

@SessionAttributes("loginUser")
@Controller
public class CertifyController {
	
	@Autowired
	private CertifyService ceService;

	/**
	 * 피드 리스트 출력
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	
	@RequestMapping("fid_ch_recommendView.do")
	public ModelAndView listFid(ModelAndView mv, 
			@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		int listCount = ceService.getListCount();
		
		int pageLimit = 5;
		int boardLimit = 10;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
		
		ArrayList<Certify> list = ceService.selectList(pi);
		
		System.out.println("list :" + list);
		
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("user/fid/fid_ch_recommend");
		
		return mv;
	
	}

}
