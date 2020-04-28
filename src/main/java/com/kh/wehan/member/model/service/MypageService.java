package com.kh.wehan.member.model.service;

import java.util.ArrayList;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.member.model.vo.Diary;
import com.kh.wehan.member.model.vo.Follow;
import com.kh.wehan.member.model.vo.FollowerSearch;
import com.kh.wehan.member.model.vo.Member;
import com.kh.wehan.member.model.vo.Mypage;

public interface MypageService {
	/**
	 * 1-1. 마이페이지 프로필 조회
	 * @return
	 */
	public Mypage my_profileView(String userId);

	/**
	 * 1-2. 나를 팔로우하는 사람수 조회
	 * @param userId
	 * @return
	 */
	public int followCount(String userId);

	/**
	 * 1-3. 내가 팔로우하는 사람수 조회
	 * @param userId
	 * @return
	 */
	public int followingCount(String userId);

	/**
	 * 1-4. 마이페이지 프로필 업데이트
	 * @param mp
	 * @return
	 */
	public int updateProfile(Mypage mp);

	/**
	 * 2-1. 마이페이지 마이챌린지 리스트 조회
	 * @param userId
	 * @return
	 */
	public ArrayList<Challenge> selectListCh(String userId);

	/**
	 * 2-2. 마이페이지 마이챌린지, 챌린지당 인증글 개수 조회
	 * @param chId
	 * @return
	 */
	public int certifyCount(Certify ce);
	
	/**
	 * 2-3. 마이페이지 마이챌린지입장시, 레벨과 경험치 업데이트
	 * @param mypage
	 * @return
	 */
	public int my_updateLvExp(Mypage mypage);
	
	/**
	 * 4-1. 다른사람 마이페이지의 회원정보 가져오기
	 * @param otherId
	 * @return
	 */
	public Member selectMember(String otherId);

	/**
	 * 4-2. 다른사람 마이페이지에서 언팔로우
	 * @param f
	 * @return
	 */
	public int my_unfollow(Follow f);

	
	/**
	 * 4-3. 내가 해당유저를 팔로우하고 있는지 여부
	 * @param f
	 * @return
	 */
	public int isFollow(Follow f);

	/**
	 * 4-4. 다른 사람 마이페이지에서 팔로우
	 * @param f
	 * @return
	 */
	public int my_follow(Follow f);

	/**
	 * 3-1. 달력리스트 가져오기
	 * @param userId
	 * @return
	 */
	public ArrayList<Diary> selectListDiary(String userId);

	/**
	 * 3-2. 달력 일정 추가
	 * @param di
	 * @return
	 */
	public int insertDiary(Diary di);

	/**
	 * 3-3. 달력 일정 삭제
	 * @param di
	 */
	public int deleteDiary(Diary di);

	/**
	 * 3-4. 달력 일정 업데이트
	 * @param di
	 * @return
	 */
	public int updateDiary(Diary di);

	/**
	 * 3-5. 달력 드래그앤드롭 업데이트
	 * @param di
	 * @return
	 */
	public int updateDiaryDrag(Diary di);

	/**
	 * 1-4. 내가 팔로우한 사람 리스트 가져오기
	 * @param userId
	 * @return
	 */
	public ArrayList<Member> selectListFollowing(String userId);
	
	/**
	 * 1-5. 나를 팔로우한 사람 리스트 가져오기
	 * @param userId
	 * @return
	 */
	public ArrayList<Member> selectListFollower(String userId);

	/**
	 * 1-6. 나를 팔로우한 사람 리스트중 검색목록 가져오기
	 * @param fs
	 * @return
	 */
	public ArrayList<Member> followerSearch(FollowerSearch fs);



}
