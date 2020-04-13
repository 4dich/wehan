package com.kh.wehan.certify.model.service;

import java.util.ArrayList;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.common.model.vo.PageInfo;

public interface CertifyService {

	/**
	 * 피드 인증글 총 개수
	 * @return
	 */
	int getListCount();

	/**
	 * 피드 리스트 출력
	 * @param pi
	 * @return
	 */
	ArrayList<Certify> selectList(PageInfo pi);

	/**
	 * 친구 피드 리스트 출력
	 * @param pi
	 * @return
	 */
	ArrayList<Certify> getFriendList(PageInfo pi);

}
