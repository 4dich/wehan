package com.kh.wehan.test;

import org.springframework.web.bind.annotation.RequestMapping;

public class viewController {
	
	// admin
	@RequestMapping("ad_challengeListView.do")
	public String ad_challengeListView() {
		return "admin/ad_challengeList";
	}
	
	

}
