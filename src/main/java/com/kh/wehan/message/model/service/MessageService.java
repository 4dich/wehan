package com.kh.wehan.message.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.wehan.message.model.vo.FriendInfo;
import com.kh.wehan.message.model.vo.FriendList;
import com.kh.wehan.message.model.vo.Message;
import com.kh.wehan.message.model.vo.MsgSearchCondition;

public interface MessageService {

	/**
	 * 메시지 리스트 가져오기
	 * @return
	 */
	ArrayList<Message> msgList();

	/**
	 * 메시지 친구 목록 가져오기
	 * @param userId
	 * @return
	 */
	ArrayList<FriendList> msgFriendList(String userId);

	/**
	 * 메시지 친구 검색
	 * @param msgSearchFriend
	 * @return
	 */
	ArrayList<FriendList> msgSearchFriend(MsgSearchCondition sc);

	/**
	 * 메시지 상세보기 친구 정보
	 * @param fId
	 * @return
	 */
	FriendInfo getFriendInfo(String fId);

}
