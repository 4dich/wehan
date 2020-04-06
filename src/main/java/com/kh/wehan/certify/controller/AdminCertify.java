package com.kh.wehan.certify.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.wehan.certify.model.service.AdminCertifyService;

@SessionAttributes("loginUser")
@Controller
public class AdminCertify {
	
	@Autowired
	private AdminCertifyService acService;
}
