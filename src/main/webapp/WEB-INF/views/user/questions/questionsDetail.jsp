<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>NISSA - PHOTOGRAPHY STUDIO HTML TEMPLATE</title>
<meta charset="UTF-8">
<meta name="description"
	content="Nissa Photography studio html template">
<meta name="keywords" content="industry, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<link href="resources/img/favicon.ico" rel="shortcut icon" />

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap"
	rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/font-awesome.min.css" />
<link rel="stylesheet" href="resources/css/magnific-popup.css" />
<link rel="stylesheet" href="resources/css/owl.carousel.min.css" />

<!-- Main Stylesheets -->
<link rel="stylesheet" href="resources/css/qnaDetail.css" />
<!-- <link rel="stylesheet" href="resources/css/left_section.css"/> -->
<link rel="stylesheet" href="resources/css/style.css" />
<link rel="stylesheet" href="resources/css/font.css"/>
<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
	.col-md-10{
	padding-left:0;
	}
	.about-info{width:348px;}
	.about-info p{font-size:12px;}
</style>
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Main section start -->
	<div class="main-site-warp">

		<%@ include file="/WEB-INF/views/common/menuBar.jsp"%>


		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-social">
				<!-- <a href=""><i class="fa fa-pinterest"></i></a>
				<a href=""><i class="fa fa-facebook"></i></a>
				<a href=""><i class="fa fa-twitter"></i></a>
				<a href=""><i class="fa fa-dribbble"></i></a>
                <a href=""><i class="fa fa-behance"></i></a> -->
				<a href="noticeList.do">공지사항</a> <a href="qnaListView.do"
					style="color: red;">문의사항</a>
			</div>

		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
				<!-- 로고 구역 -->
				<div class="mb-warp">
					<a href="indexView.do" class="site-logo">
						<h2 style="margin-left: 6px;">위대한 한걸음</h2>
						<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
					</a>
					<br><br>
					<!-- 서브메뉴 -->
					<div class="about-info" style="margin-left:0;margin-top:100px;">
						<h2>문의사항</h2>
						<!-- 감성글 작성 -->
						<p>
							위대한 한걸음에 궁금증이 생기신다면 <br> 언제든지 문의해주세요!
						</p>
					</div>

				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section blog-page">
				<div class="blog-posts">
					<div class="arrowBack">
						<a href="qnaListView.do"> <img
							src="resources/images/arrow-righ-3.png" alt="">
						</a>
					</div>


					<br>
					<div class="blog-post-item">

						<div class="qnaInfo">
							<div class="qnaInfoArea">

								<table class="detailArea">
									<tr class="qnaNumber">
										<td>번호</td>
										<td>${q.qId}</td>
									</tr>
									<tr class="qnaTitleArea">
										<td class="qnaTitle1">제목</td>
										<td class="qnaTitle2">${q.qTitle}</td>
									</tr>
									<tr class="qnaUserNameArea">
										<td class="qnaUserName1">작성자명</td>
										<td class="qnaUserName2">${q.qUserid}</td>
									</tr>
									<tr class="qnaDateArea">
										<td class="qnaDate1">등록날짜</td>
										<td class="qnaDate2">${q.qDate}</td>
									</tr>
									<tr class="qnaTextBox">
										<td class="qnaTextArea" colspan="2">${q.qContent}</td>
									</tr>

									<c:if test="${loginUser.userId eq q.qUserid }">
										<tr class="replybuttonArea">
											<c:url var="qModifyView" value="questionsModifyView.do">
												<c:param name="qId" value="${ q.qId }" />
												<c:param name="currentPage" value="${currentPage}" />
											</c:url>
											<c:url var="qDelete" value="questionsDelete.do">
												<c:param name="qId" value="${ q.qId }" />
												<c:param name="currentPage" value="${currentPage}" />
											</c:url>
											<td class="buttonArea" colspan="2"><a class="site-btn"
												href="${qModifyView}"
												style="background-color: white; padding-left: 15px; padding-right: 15px; min-width: 120px; padding-top: 10px; padding-bottom: 10px;">
													수정하기 </a> <a class="site-btn" href="${qDelete}"
												style="background-color: white; padding-left: 15px; padding-right: 15px; min-width: 120px; padding-top: 10px; padding-bottom: 10px;">
													삭제하기 </a></td>
										</tr>
									</c:if>

								</table>

								<div class="col-md-10">
									<div class="portlet light bordered">
										<div class="portlet-title tabbable-line"></div>
										<div class="portlet-body">
											<div>

												<!-- 댓글 -->
												<form action="questionsReplyInsert.do">
													<div class="col-md-10">
														<div class="portlet light bordered">
															<div class="portlet-title tabbable-line"></div>
															<div class="portlet-body">
																<div>
																	<!-- 댓글 쓰기 -->
																	<c:if test="${!empty adminUser.userId  }">
																	
																	<div class="tab-content">
																		<div role="tabpanel" class="tab-pane active" id="home"
																			align="center">
																			<input type="hidden" name="replyId" value="${q.qId }"/>
																			<div class="form-group" style="text-align: right;">
																				<textarea class="form-control" id="addReflyText" name="qrContent"
																					style="height: 100px; resize: none; width:150%;"
																					placeholder=" 댓글을 남겨보세요!"></textarea>
																				<button id="submitR" class="site-btn sb-dark"
																					style="padding-left: 15px; padding-right: 15px; min-width: 120px; padding-top: 10px; padding-bottom: 10px; margin-top: 10px;">
																					댓글 등록</button>
																				<button id="listBack" class="site-btn sb-dark"
																					type="button" onclick="location.href='qnaListView.do'"
																					style="padding-left: 15px; padding-right: 15px; min-width: 120px; padding-top: 10px; padding-bottom: 10px; margin-top: 10px;">
																					목록가기</button>
																			</div>
																		</div>
																	</div>
																	</c:if>
																	
													<!-- 댓글 읽기 -->
									<c:forEach var="q" items="${reply}"> 
                              <div class="card" style="margin-bottom: 20px; width:150%">
                                 <div class="card-body" style="width:150%"> 
                                    <div class="row">      
                                      
                                         <div id="commentbody" class="media g-mb-30 media-comment deletereply" style="display: inline-block; margin-left:65%">
														<c:if test="${!empty adminUser.userId  }">×</c:if> 
													</div>                      
                                       <div class="media g-mb-30 media-comment">
                                       
													
                                          <img class="d-flex g-width-50 g-height-50 rounded-circle g-mt-3 g-mr-15" style="max-width:8%" src="resources/images/img.png" alt="Image Description">
                                          <div class="media-body u-shadow-v18 g-bg-secondary g-pa-30">
                                             <div class="g-mb-15">
                                                <h5 class="h5 g-color-gray-dark-v1 mb-0">
                                              ${q.qrUserid}
                                           <input type="hidden" value= "${q.qrId }" >
                                           <input type="hidden" value= "${q.qId }">
                                                </h5>
                                                <span class="g-color-gray-dark-v4 g-font-size-12">${q.qrDate }</span>
                                             </div>                                       
                                             <p>
                                             ${q.qrContent }
                                             </p>   
                                          </div>
                                          
                                       </div>
                                       
                                    </div>
                                 </div>
                              </div>
								</c:forEach>												
						
										</form>
											</div>
										</div>
									</div>
								</div>
							</div>
 
						</div>
					</div>
					<!-- Page end -->
				</div>
				<div class="copyright">
					<p>
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved
					</p>
				</div>
			</div>
		</div>
		<!-- Main section end -->

		<!-- 리스트 짝수 배경색 변경 -->
		<script>
			$(document).ready(
					function() {
						$('.qnaTable tr:even').css("backgroundColor",
								"rgb(247, 247, 247)"); // even 짝수
					});
		</script>

		<!--====== Javascripts & Jquery ======-->
		<script src="resources/js/jquery-3.2.1.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		<script src="resources/js/owl.carousel.min.js"></script>
		<script src="resources/js/jquery.nicescroll.min.js"></script>
		<script src="resources/js/circle-progress.min.js"></script>
		<script src="resources/js/jquery.magnific-popup.min.js"></script>
		<script src="resources/js/main.js"></script>

		<script>
		 $(".deletereply").click(function(){
		     var qrId= $(this).parent().children().find("input[type=hidden]").val();
		      location.href="deletereply.do?qrId="+ qrId+ "&qId="+${q.qId }+ "&currentPage="+${currentPage};
			   
		 })
		 
		 
			$(function() {

				$("#btnList").on("click", function() {
					location.href = "questionsDetail.do?currentPage=" + $
					{
						currentPage
					}
					;
				});

				var qId = $
				{
					q.qId
				}
				;
				console.log(qId);

				$
						.ajax({
							url : "replyListView.do",
							data : {
								qId : qId
							},
							//  	속성명 : 위에 선언된 변수명
							dataType : "json",
							success : function(data) {
								$divBody = $("#commentbody");
								$divBody.html("");
                             console.log(data);
								var $img;
								var $mediaBody;
								var $gmb;
								var $h5;
								var $span;
								var $p;
								var $rdiv;

								$(".comments-title").text(
										"댓글(" + data.length + ")");
								console.log(data);
								if (data.length > 0) {
									for ( var i in data) {
										console.log(data[i]);
										$img = $("<img class='d-flex g-width-50 g-height-50 rounded-circle g-mt-3 g-mr-15' alt='Image Description'>");
										$img.attr('src',
												'resources/images/user/'
														+ data[i].picture);
										$mediaBody = $("<div class='media-body u-shadow-v18 g-bg-secondary g-pa-30'>");
										$gmb = $("<div class='g-mb-15'>");
										$h5 = $(
												"<h5 class='h5 g-color-gray-dark-v1 mb-0'>")
												.text(data[i].userId);
										$span = $(
												"<span class='g-color-gray-dark-v4 g-font-size-12'>")
												.text(data[i].ccDate);
										$p = $("<p>").text(data[i].ccContent);
										$rdiv = $("<div style='width: 100%; display: inline-flex;margin-bottom: 10px;'>");

										$gmb.append($h5);
										$gmb.append($span);
										$mediaBody.append($gmb);
										$mediaBody.append($p);

										$rdiv.append($img);
										$rdiv.append($mediaBody);
										$divBody.append($rdiv);
									}
								} else {
									$div = $("<div>");
									$content = $("<p>").text("등록된 댓글이 없습니다.")

									$div.append($content);
									$divBody.append($div);
								}

							},
							error : function() {
								console.log("전송실패");
							}
						});
			});
		</script>
</body>
</html>
