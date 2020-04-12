package com.kh.wehan.member.model.vo;

public class Mypage {
   private String userId;
   private String intro;
   private String goal;
   private String interest;
   private int myExp;
   private int myLevel;
   public Mypage() {
      super();
   }
   public Mypage(String userId, String intro, String goal, String interest, int myExp, int myLevel) {
	  super();
	  this.userId = userId;
	  this.intro = intro;
	  this.goal = goal;
	  this.interest = interest;
	  this.myExp = myExp;
	  this.myLevel = myLevel;
   }
   
   public Mypage(String userId, String intro, String goal, String interest) {
		super();
		this.userId = userId;
		this.intro = intro;
		this.goal = goal;
		this.interest = interest;
	}
	public String getUserId() {
      return userId;
   }
   public void setUserId(String userId) {
      this.userId = userId;
   }
   public String getIntro() {
      return intro;
   }
   public void setIntro(String intro) {
      this.intro = intro;
   }
   public String getGoal() {
      return goal;
   }
   public void setGoal(String goal) {
      this.goal = goal;
   }
   public String getInterest() {
      return interest;
   }
   public void setInterest(String interest) {
      this.interest = interest;
   }
   public int getMyExp() {
      return myExp;
   }
   public void setMyExp(int myExp) {
      this.myExp = myExp;
   }
   public int getMyLevel() {
      return myLevel;
   }
   public void setMyLevel(int myLevel) {
      this.myLevel = myLevel;
   }
   @Override
   public String toString() {
      return "MyPage [userId=" + userId + ", intro=" + intro + ", goal=" + goal + ", interest=" + interest
            + ", myExp=" + myExp + ", myLevel=" + myLevel + "]";
   }

}