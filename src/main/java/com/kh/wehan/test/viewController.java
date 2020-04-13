package com.kh.wehan.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class viewController {
	
	// admin
	@RequestMapping("ad_challengeListView.do")
	public String ad_challengeListView() {
		return "redirect:clist.do";
	}
	
	@RequestMapping("ad_payListView.do")
	public String ad_payListView() {
		return "admin/ad_payList";
	}
	
	@RequestMapping("ad_payDetailView.do")
	public String ad_payDetailView() {
		return "admin/ad_payDetail";
	}
	
	@RequestMapping("ad_profileListView.do")
	public String ad_profileListView() {
		return "admin/ad_profileList";
	}
	
	@RequestMapping("ad_profileDetailView.do")
	public String ad_profileDetailView() {
		return "admin/ad_profileDetail";
	}
	
	@RequestMapping("ad_qnaListView.do")
	public String ad_qnaListView() {
		return "admin/ad_qnaList";
	}
	
	@RequestMapping("ad_qnaDetailView.do")
	public String ad_qnaDetailView() {
		return "admin/ad_qnaDetail";
	}
	
	@RequestMapping("ad_noticeListView.do")
	public String ad_noticeListView() {
		return "redirect:ad_noticeList.do";
	}
	
	@RequestMapping("ad_noticeDetailView.do")
	public String ad_noticeDetailView() {
		return "admin/ad_noticeDetail";
	}
	
	@RequestMapping("ad_noticeInsertView.do")
	public String ad_noticeInsertView() {
		return "admin/ad_noticeInsert";
	}
	
	// user
	@RequestMapping("ch_detailView.do")
	public String ch_detailView() {
		return "user/challenge/ch_detail";
	}
	
	@RequestMapping("ch_detailEndView.do")
	public String ch_detailEndView() {
		return "user/challenge/ch_detailEnd";
	}
	
	@RequestMapping("ch_detailDoingView.do")
	public String ch_detailDoingView() {
		return "user/challenge/ch_detailDoing";
	}
	
	@RequestMapping("ch_listView.do")
	public String ch_listView() {
		return "user/challenge/ch_list";
	}
	
	@RequestMapping("ch_premiumListView.do")
	public String ch_premiumListView() {
		return "user/challenge/ch_premiumList";
	}
	
	@RequestMapping("ch_top10ListView.do")
	public String ch_top10ListView() {
		return "user/challenge/ch_top10List";
	}
	
	@RequestMapping("ch_registerView.do")
	public String ch_registerView() {
		return "user/challenge/ch_register";
	}
	
	
	@RequestMapping("findIdPwdView.do")
	public String findIdPwdView() {
		return "user/findIdPwd";
	}
	
	@RequestMapping("loginView.do")
	public String loginView() {
		return "user/login";
	}
	
	@RequestMapping("signInView.do")
	public String signInView() {
		return "user/signIn";
	}
	
	@RequestMapping("signInAgreeView.do")
	public String signInAgreeView() {
		return "user/signInAgree";
	}
	
	
	@RequestMapping("errorPageView.do")
	public String errorPageView() {
		return "common/errorPage";
	}
	
	@RequestMapping("fid_detailView.do")
	public String fid_detailView() {
		return "user/fid/fid_detail";
	}
	
	@RequestMapping("ch_certifyDetailView.do")
	public String ch_certifyDetailView() {
		return "user/ceritify/ch_certifyDetail";
	}
	
	@RequestMapping("guideInfoView.do")
	public String guideInfoView() {
		return "user/info/guideInfo";
	}
	
	@RequestMapping("msg_friendListView.do")
	public String msg_friendListView() {
		return "redirect:msgFriendList.do";
	}
	
	@RequestMapping("msg_msgListView.do")
	public String msg_msgListView() {
		return "user/message/msg_msgList";
	}
	
	@RequestMapping("msg_msgDetailView.do")
	public String msg_msgDetailView() {
		return "user/message/msg_msgDetail";
	}
	
	@RequestMapping("serviceInfoView.do")
	public String serviceInfoView() {
		return "user/info/serviceInfo";
	}
	
	@RequestMapping("ch_registerPhotoView.do")
	public String ch_registerPhotoView() {
		return "user/ceritify/ch_registerPhoto";
	}
	
	
	@RequestMapping("companyInfoView.do")
	public String companyInfoView() {
		return "user/companyInfo";
	}
	
	@RequestMapping("payAgreeView.do")
	public String payAgreeView() {
		return "user/payAgree";
	}
	
	@RequestMapping("indexView.do")
	public String indexView() {
		return "user/main";
	}
	
	@RequestMapping("ch_certifyPhotoListView.do")
	public String ch_certifyPhotoListView() {
		return "user/ceritify/ch_certifyPhotoList";
	}
	
//	@RequestMapping("fid_friendListView.do")
//	public String fid_friendListView() {
//		return "user/fid/fid_friendList";
//	}
	
//	@RequestMapping("fid_ch_recommendView.do")
//	public String fid_ch_recommendView() {
//		return "user/fid/fid_ch_recommend";
//	}
	
	@RequestMapping("fid_followView.do")
	public String fid_followView() {
		return "user/fid/fid_follow";
	}
	
	/*
	 * @RequestMapping("qnaListView.do") public String qnaListView() { return
	 * "user/questions/questions"; }
	 */
	
	@RequestMapping("qnaDetailView.do")
	public String qnaDetailView() {
		return "user/questions/questionsDetail"; 
	}
	
	@RequestMapping("qnaInsertView.do")
	public String qnaInsertView() {
		return "user/qnaInsert";
	}
	
		
	@RequestMapping("noticeDetailView.do")
	public String noticeDetailView() {
		return "user/notice/noticeDetail";
	}
	
	@RequestMapping("noticeView.do")
	public String noticeView() {
		return "redirect:noticeList.do";
	}
	

}
