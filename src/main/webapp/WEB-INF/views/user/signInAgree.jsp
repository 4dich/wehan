<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>NISSA - PHOTOGRAPHY STUDIO HTML TEMPLATE</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="../resources/img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="../resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="../resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="../resources/css/style.css"/>
	<script src="../resources/js/jquery-3.2.1.min.js"></script>

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
		<style>
			tbody  td {padding:20px; padding-bottom: 0;}
			tbody  th {padding:10px;}
			.policycontent{margin: 10px auto; 
			width: 80%; height: 300px; border: 1px solid #e6e6e6; overflow: scroll; font-size:14px;}
			p{margin :0}
			.policyname{margin: 40px 0 20px 0; margin-left: 8%;}
			label{margin-bottom: 0;}
			.site-btn{margin:30px; background-color: black; color: white; border: none;}
		</style>


</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<div class="main-site-warp">
		
		<%@ include file="/WEB-INF/views/common/menuBar.jsp" %>

		
		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
		
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
                    <!-- 로고 구역 -->
					<div class="mb-warp">
						<a href="index.html" class="site-logo">
							<h2 style="margin-left: 6px;">위대한 한걸음</h2>
							<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
						</a>
                    <!-- 서브메뉴 -->
					<div class="about-info">
						<h2>회사소개</h2>
                        <!-- 감성글 작성 -->
                        <p>"한 인간에게는 작은 한 걸음이지만, 인류에게는 위대한 도약이다. (One small step for a man, one giant leap for mankind.)”<br>
							이 명언은 닐 암스트롱이 달 표면에 첫 발을 내딛고 한 말입니다.  </p>
					</div>
					<ul class="contact-info">
						<li>서울특별시 강남구 테해란로14길 6</li>
						<li>남도빌딩 3F H반 T:1544-9970</li><br>
						<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
					</ul>
					
				</div>
			</div>
            <!-- Left Side section end -->
            

            <!-- page end Main section end 사이에 그대로 붙여넣어-->
            <!-- 카피라이트 -->
            <!-- Page end -->
           
           
            <!-- Main section end -->
	<!-- Main section start -->
	
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section blog-page" style="margin-top: 40px; height: 800px;">
				<div class="contact-section">
					
					<div class="policy" style="margin-left: 30px;">
						<!-- <div class="col-xl-6">
							<div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14376.077865872314!2d-73.879277264103!3d40.757667781624285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1546528920522" style="border:0" allowfullscreen></iframe></div>
						</div> -->
						<h5 class="policyname">이용약관 동의(필수)</h5>
						<div class="policycontent">
							제1조 (목적)
							본 약관은 주식회사 카카오(이하 ‘회사’라 합니다)가 제공하는 전자지급결제대행서비스, 선불전자지급수단의 발행 및 관리서비스, 그리고 결제대금예치서비스(이하 통칭하여 ‘전자금융거래서비스’라 합니다)를 회원이 이용함에 있어, 회사와 회원 간 권리, 의무 및 회원의 이용절차 등에 관한 사항을 규정하는 것을 그 목적으로 합니다.

							
							제2조 (정의)
							① 본 약관에서 정한 용어의 정의는 아래와 같습니다.

							1. ‘전자금융거래’라 함은 회사가 전자적 장치를 통하여 전자금융업무를 제공하고, 회원이 회사의 종사자와 직접 대면하거나 의사소통을 하지 아니하고 자동화된 방식으로 이를 이용하는 거래를 말합니다.
							2. ‘전자지급수단’이라 함은 선불전자지급수단, 신용카드 등 전자금융거래법 제2조 제11호에서 정하는 전자적 방법에 따른 지급수단을 말합니다.
							3. ‘전자지급거래’라 함은 자금을 주는 자(이하 ‘지급인’이라 합니다)가 회사로 하여금 전자지급수단을 이용하여 자금을 받는 자(이하 ‘수취인’이라 합니다)에게 자금을 이동하게 하는 전자금융거래를 말합니다.
							4. ‘전자적 장치’라 함은 전자금융거래정보를 전자적 방법으로 전송하거나 처리하는데 이용되는 장치로서 현금자동지급기, 자동입출금기, 지급용단말기, 컴퓨터, 전화기 그 밖에 전자적 방법으로 정보를 전송하거나 처리하는 장치를 말합니다.
							5. ‘접근매체’라 함은 전자금융거래에 있어서 거래지시를 하거나 회원 및 거래내용의 진실성과 정확성을 확보하기 위하여 사용되는 수단 또는 정보로서 전자식 카드 및 이에 준하는 전자적 정보(신용카드번호를 포함합니다), 전자서명법 상의 전자서명생성정보 및 인증서, 금융기관 또는 전자금융업자에 등록된 회원번호, 회원의 생체정보, 이상의 수단이나 정보를 사용하는데 필요한 비밀번호 등 전자금융거래법 제2조 제10호에서 정하고 있는 것을 말합니다.
							6. ‘전자금융거래서비스’라 함은 회사가 회원에게 제공하는 제4조 기재의 서비스를 말합니다.
							7. ‘회원’이라 함은 본 약관 제2장과 제3장 에서 달리 정한 경우를 제외하고는 본 약관에 동의하고 본 약관에 따라 회사가 제공하는 전자금융거래서비스를 이용하는 이용자를 말합니다.
							8. ‘거래지시’라 함은 회원이 본 약관에 따라 회사에게 전자금융거래의 처리를 지시하는 것을 말합니다.
							9. ‘오류’라 함은 회원의 고의 또는 과실 없이 전자금융거래가 전자금융거래계약 또는 회원의 거래지시에 따라 이행되지 아니한 경우를 말합니다.
							② 본 조 및 본 약관의 다른 조항에서 정의한 것을 제외하고는 전자금융거래법 등 관련 법령에 정한 바에 따릅니다.

							
							제3조 (약관의 명시 및 변경)
							① 회사는 회원이 전자금융거래를 하기 전에 본 약관을 개별 서비스에 게시하고 본 약관의 중요한 내용을 확인할 수 있도록 합니다.

							② 회사는 회원의 요청이 있는 경우 전자문서의 전송(전자우편을 이용한 전송을 포함합니다), 모사전송, 우편 또는 직접교부의 방식에 의하여 본 약관의 사본을 회원에게 교부합니다.

							③ 회사가 본 약관을 변경하는 때에는 그 시행일 1월 전에 변경되는 약관을 금융거래정보 입력화면 또는 개별 서비스의 공지사항 게시판 등에 게시함으로써 회원에게 공지합니다. 다만, 법령의 개정으로 인하여 긴급하게 약관을 변경한 때에는 변경된 약관을 홈페이지에 1개월 이상 게시하고 회원에게 전자우편 등을 통하여 사후 통지합니다.

							④ 회사는 제3항의 공지나 통지를 할 경우 “회원이 변경에 동의하지 아니한 경우 공지나 통지를 받은 날로부터 30일 이내에 계약을 해지할 수 있으며, 계약해지의 의사표시를 하지 아니한 경우에는 변경에 동의한 것으로 본다.”라는 취지의 내용을 공지하거나 통지합니다.

							⑤ 회원이 제4항의 공지나 통지를 받은 날로부터 30일 이내에 계약해지의 의사표시를 하지 아니한 경우에는 변경에 동의한 것으로 봅니다.

							
							제4조 (전자금융거래서비스의 구성 및 내용)
							① 전자금융거래서비스는 다음 각 호의 개별 서비스로 구성됩니다.

							1. 전자지급결제대행서비스
							2. 선불전자지급수단 발행 및 관리서비스
							3. 결제대금예치서비스
							② 회사는 필요시 회원에게 사전 고지하고 전자금융거래서비스를 추가하거나 변경할 수 있습니다.

							③ 회사는 특정 금융거래정보의 보고 및 이용 등에 관한 법률 등 관련 법령이나 기타 개별 서비스 제공상 필요에 의해 불가피한 경우 회원의 연령, 자격 등 일정 기준의 구분에 따라 서비스 내용을 달리하는 등 서비스의 이용을 제한할 수 있습니다. 자세한 내용은 다음의 사이트 주소 및 경로를 통해 사전에 알려드리겠습니다.

							1. 다음 서비스의 경우
							- 사이트 주소 : https://m.daum.net/channel/new/notice
							2. 카카오 서비스의 경우
							- 내결제 경로 : 카카오톡>설정>개인/보안>내결제>공지사항
							
							제5조 (이용시간)
							① 회사는 회원에게 연중무휴 1일 24시간 전자금융거래서비스를 제공함을 원칙으로 합니다. 다만, 금융회사 기타 결제수단 발행업자의 사정에 따라 달리 정할 수 있습니다.

							② 회사는 정보통신설비의 보수, 점검 기타 기술상의 필요나 금융회사 기타 결제수단 발행업자의 사정에 의하여 전자금융거래서비스 중단이 불가피한 경우, 전자금융거래서비스 중단 3일 전까지 게시 가능한 전자적 수단을 통하여 전자금융거래서비스 중단 사실을 게시한 후 전자금융거래서비스를 일시 중단할 수 있습니다. 다만, 시스템 장애복구, 긴급한 프로그램 보수, 외부요인 등 불가피한 경우에는 사전 게시 없이 전자금융거래서비스를 중단할 수 있습니다.

							
							제6조 (거래내용의 확인)
							① 회사는 개별 서비스 내 회원 정보 조회 화면을 통하여 회원의 거래내용(회원의 오류정정 요구사실 및 처리 결과에 관한 사항을 포함합니다)을 확인할 수 있도록 하며, 회원이 거래내용에 대해 서면교부를 요청하는 경우에는 요청을 받은 날로부터 2주 이내에 모사전송, 우편 또는 직접 교부의 방법으로 거래내용에 관한 서면을 교부합니다.

							② 회사는 제1항에 따른 회원의 거래내용 서면교부 요청을 받은 경우 전자적 장치의 운영장애, 그 밖의 이유로 거래내용을 제공할 수 없는 때에는 즉시 회원에게 전자문서 전송(전자우편을 이용한 전송을 포함한다)의 방법으로 그러한 사유를 알려야 하며, 전자적 장치의 운영장애 등의 사유로 거래내용을 제공할 수 없는 기간은 제1항의 거래내용에 관한 서면의 교부기간에 산입하지 아니합니다.

							③ 제1항의 대상이되는 거래내용 중 대상기간이 5년인 것은 다음 각호와 같습니다.

							1. 거래계좌의 명칭 또는 번호
							2. 전자금융거래의 종류 및 금액
							3. 전자금융거래상대방을 나타내는 정보
							4. 전자금융거래일시
							5. 전자적 장치의 종류 및 전자적 장치를 식별할 수 있는 정보
							6. 회사가 전자금융거래의 대가로 받은 수수료
							7. 회원의 출금 동의에 관한 사항
							8. 해당 전자금융거래와 관련한 전자적 장치의 접속기록
							9. 전자금융거래의 신청 및 조건의 변경에 관한 사항
							10. 건당 거래금액이 1만원을 초과하는 전자금융거래에 관한 기록
							④ 제1항의 대상이 되는 거래내용 중 대상기간이 1년인 것은 다음 각 호와 같습니다.

							1. 건당 거래금액이 1만원 이하인 전자금융거래에 관한 기록
							2. 전자지급수단의 이용과 관련된 거래승인에 관한 기록
							3. 회원의 오류정정 요구사실 및 처리결과에 관한 사항
							4. 기타 금융위원회가 고시로 정한 사항
							⑤ 회원이 제1항에서 정한 서면교부를 요청하고자 할 경우 다음의 주소 및 전화번호로 요청할 수 있습니다.

							1. 다음 서비스의 경우
							주소 : 제주도 제주시 오등동 1730-8 GMC
							사이트 주소 : http://cs.daum.net
							전화번호 : 1577-3321
							2. 카카오 서비스의 경우
							주소 : 경기도 성남시 분당구 판교역로 241번길 20 미래에셋벤처타워 1층
							사이트 주소 : http://www.kakao.com/requests
							전화번호 : 1577-3754
							3. 멜론 서비스의 경우
							주소 : 서울시 중구 후암로 110 서울시티타워빌딩 2층 멜론티켓 고객센터
							사이트 주소 : https://ticket.melon.com/customerservice/notice.htm
							전화번호 : 1899-0042
							
							제7조 (거래지시의 철회 등)
							① 회원이 회사의 전자금융거래서비스를 이용하여 전자지급거래를 한 경우, 회원은 지급의 효력이 발생하기 전까지 본 약관에서 정한 바에 따라 제6조 제5항에 기재된 주소, 전화번호, 전자우편주소를 이용한 우편, 전화연락, 전자문서 전송의 방법으로 또는 개별 서비스 내 철회에 의한 방법으로 거래지시를 철회할 수 있습니다. 단, 각 서비스 별 거래지시 철회의 효력 발생시기는 본 약관 제18조, 제27조, 제32조에서 정한 바에 따릅니다.

							② 회원은 전자지급의 효력이 발생한 경우에 전자상거래등에서의 소비자보호에 관한 법률 등 관련 법령상 청약의 철회의 방법에 따라 결제대금을 반환 받을 수 있습니다.

							
							제8조 (오류의 정정 등)
							① 회원은 전자금융거래서비스를 이용함에 있어 오류가 있음을 안 때에는 회사에 대해 그 정정을 요구할 수 있습니다.

							② 회사는 전항의 규정에 따른 오류의 정정요구를 받은 때 또는 스스로 전자금융거래에 오류가 있음을 안 때에는 이를 즉시 조사하여 처리한 후 정정요구를 받은 날 또는 오류가 있음을 안 날부터 2주 이내에 그 결과를 회원에게 알려 드립니다.

							
							제9조 (전자금융거래 기록의 생성 및 보존)
							① 회사는 회원이 이용한 전자금융거래의 내용을 추적, 검색하거나 그 내용에 오류가 발생한 경우에 이를 확인하거나 정정할 수 있는 기록을 생성하여 보존합니다.

							② 제1항의 규정에 따라 회사가 보존하여야 하는 기록의 종류 및 보존방법은 제6조 제3항 및 제4항에 따릅니다.

							
							제10조 (전자금융거래 정보의 제공금지)
							① 회사는 전자금융거래서비스를 제공함에 있어서 취득한 회원의 인적사항, 회원의 계좌, 접근매체 및 전자금융거래의 내용과 실적에 관한 정보 또는 자료를 금융실명법 등 법령에 의하거나 회원의 동의를 얻지 아니하고 제3자에게 제공, 누설하거나 업무 상 목적 외에 사용하지 아니합니다.

							② 회사는 회원이 안전하게 전자금융거래서비스를 이용할 수 있도록 회원의 개인정보보호를 위하여 개인정보처리방침을 운용합니다. 회사의 개인정보처리방침은 회사의 홈페이지 또는 개별 서비스에 링크된 화면에서 확인할 수 있습니다.

							
							제11조 (회사의 책임)
							① 회사는 다음 각호의 사고로 인하여 회원에게 손해가 발생한 경우에는 그 손해를 배상할 책임을 부담합니다.

							1. 접근매체의 위조나 변조로 발생한 사고
							2. 계약체결 또는 거래지시의 전자적 전송이나 처리과정에서 발생한 사고
							3. 전자금융거래를 위한 전자적 장치 또는 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제2조 제1항 제1호에 따른 정보통신망에 침입하여 거짓이나 그 밖의 부정한 방법으로 획득한 접근매체의 이용으로 발생한 사고
							② 회사는 제1항에도 불구하고 다음 각호의 경우에는 그 책임의 전부 또는 일부를 회원이 부담하게 할 수 있습니다.

							1. 회원이 접근매체를제3자에게 대여하거나 그 사용을 위임한 경우 또는 양도나 담보의 목적으로 제공한 경우
							2. 제3자가 권한 없이 회원의 접근매체를 이용하여 전자금융거래를 할 수 있음을 알았거나 쉽게 알 수 있었음에도 불구하고 접근매체를 누설하거나 노출 또는 방치한 경우
							3. 법인(중소기업기본법제2조 제2항에 의한 소기업을 제외한다)인 회원에게 손해가 발생한 경우로서 회사가 사고를 방지하기 위하여 보안절차를 수립하고 이를 철저히 준수하는 등 합리적으로 요구되는 충분한 주의의무를 다한 경우
							
							제12조 (회원의 의무 및 전자금융거래서비스 이용제한)
							① 회원은 아래 각 호의 행위를 하여서는 아니 되며, 회사는 회원이 아래 각 호의 사유에 해당하는 경우 및 아래 각 호의 사유에 해당한다고 의심될 만한 상당한 이유가 있는 경우 해당 회원에게 전자우편 또는 기타 유효한 수단을 통해 통보하고, 회원 자격을 박탈하거나 전자금융거래서비스의 이용을 일시적 또는 영구적으로 제한할 수 있습니다.

							1. 회원 가입 시 등록한 개인정보의 전부 또는 일부가 허위임이 밝혀지는 경우
							2. 회사가 제공하는 유료서비스 이용방법에 의하지 아니하고 비정상적인 방법으로 유료서비스를 이용하거나 시스템에 접근하는 경우
							3. 타인의 명의나 개인정보를 도용하여 회원 가입 후 전자금융거래서비스를 이용하는 경우
							4. 타인의 결제정보 등을 도용하거나 부정한 행위로 거래를 하는 경우
							5. 타인을 속여 대신 결제하도록 하는 경우(지인 또는 기관을 사칭한 피싱 등)
							6. 회원의 접근매체를 매매하거나 양도하는 경우
							7. 카카오계정, Daum ID, Melon ID 를 타인에게 대여하거나 판매, 양도하는 경우
							8. 타인에게 대가를 받고 대신 결제하는 경우
							9. 회사가 정하지 않은 비정상적인 방법으로 선불전자지급수단을 취득하거나 사용하는 경우
							10. 회사가 게시한 정보의 무단 변경 또는 회사가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시하는 경우
							11. 회사 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 경우
							12. 구매의사 없이 반복적인 구매행위를 하거나 환불 받는 경우
							13. 회사가 제공하는 재화나 서비스를 이용하고자 하는 의사 없이 자금 융통만을 목적으로 회사의 재화나 서비스를 제3자에게 재판매하는 경우
							14. 불법 할인의 목적으로 모바일 교환권을 구매하여 제3자에게 판매하는 경우
							15. 정상적으로 결제되지 않고 충전된 선불전자지급수단을 온라인 디지털 콘텐츠 구매에 사용한 것이 확인되어 회사가 이용대금을 청구했으나 불응하는 경우
							16. 온라인 디지털 콘텐츠 제공자, PG사 또는 구글, 애플, 원스토어 등의 플랫폼 제공업체에서 결제 취소, 환불 진행 후 또는 온라인 디지털 콘텐츠의 서비스 기한 만료 후 회수되지 않은 온라인 디지털 콘텐츠를 회사에 신고하지 않고 이용하는 경우
							17. 결제수단을 제공하는 사업자가 지정한 방식으로 이용요금을 납부하지 않고 장기 연체하는 경우
							18. 다른 회원의 전자금융거래서비스 이용을 방해하거나, 회사의 전자금융거래서비스 제공에 지장을 초래하는 경우
							19. 회사가 정한 기간 내에 사용제한 사유를 해소하지 못한 경우
							20. 기타 관련 법령, 본 약관을 위반하는 불법적이거나 부당한 행위
							② 제1항에 해당하는 회원은 해당 사유를 해소한 이후 회사의 승낙에 따라 전자금융거래서비스를 다시 이용할 수 있습니다.

							
							제13조 (분쟁처리 및 분쟁조정)
							① 회원은 회사의 서비스 페이지 하단에 게시된 분쟁처리 담당자 또는 연락처를 통하여 전자금융거래와 관련한 의견 및 불만의 제기, 손해배상의 청구 등의 분쟁처리를 요구할 수 있습니다.

							② 회원이 회사에 대하여 분쟁처리를 신청한 경우 회사는 15일 이내에 이에 대한 조사 또는 처리 결과를 회원에게 안내 합니다.

							③ 회원은 회사의 분쟁처리결과에 대하여 이의가 있을 경우 금융위원회의 설치 등에 관한 법률 제51조의 규정에 따른 금융감독원의 금융분쟁조정위원회나 소비자기본법 제60조 제1항의 규정에 따른 한국소비자원의 소비자분쟁조정위원회에 회사의 전자금융거래서비스의 이용과 관련한 분쟁조정을 신청할 수 있습니다.

							
							제14조 (회사의 안전성 확보 의무)
							회사는 전자금융거래가 안전하게 처리될 수 있도록 전자금융거래의 종류 별로 전자적 전송이나 처리를 위한 인력, 시설, 전자적 장치 등의 정보기술부문 및 전자금융업무에 관하여 금융위원회가 정하는 기준을 준수합니다.

							
							제15조 (약관 외 준칙)
							① 회사와 회원 사이에 개별적으로 합의한 사항이 본 약관에 정한 사항과 다를 때에는 그 합의사항을 본 약관에 우선하여 적용합니다.

							② 전자금융거래에 관하여 본 약관에 정하지 않은 사항은 개별약관이 정하는 바에 따릅니다.

							③ 본 약관과 전자금융거래에 관한 개별약관에 정하지 아니한 사항(용어의 정의 포함)에 대하여는 다른 합의사항이 없으면 전자금융거래법, 여신전문금융업법, 전자상거래 등에서의 소비자 보호에 관한 법률 등 관계 법령에서 정한 바에 따릅니다.

							
							제16조 (관할)
							회사와 회원 간에 발생한 분쟁에 관한 관할은 민사소송법에서 정한 바에 따릅니다.

						
						</div>
						<div style="margin-left:60%; margin-top: 30px;">
							<label><input type="radio" id="agreeA1" name="agreeA" value="Y" style="float: right;"></label>&nbsp;&nbsp;<label for="agreeA1">동의합니다. </label>&nbsp;&nbsp;
							<label><input type="radio" id="agreeA2" name="agreeA" checked="checked" value="N" style="float: right;"></label>&nbsp;&nbsp;<label for="agreeA2">동의하지 않습니다. </label>
						</div>	
						<h5 class="policyname">개인정보 수집 및 이용 동의(필수)</h5>
						<div class="policycontent">
							제17조 (정의)
							본 장에서 정하는 용어의 정의는 아래와 같습니다.
							1. ‘전자지급결제대행 서비스’라 함은 전자적 방법으로 재화 또는 용역(이하 '재화 등'이라고 합니다)의 구매에 있어서 지급결제 정보를 송신하거나 수신하는 것 또는 그 대가의 정산을 대행하거나 매개하는 서비스를 말합니다.
							2. ‘회원’이라 함은 본 약관에 동의하고 회사가 제공하는 전자지급결제대행 서비스를 이용하는 자를 말합니다.
							
							제18조 (거래지시의 철회)
							① 회원이 전자지급결제대행 서비스를 이용한 경우 회원은 거래지시된 금액의 정보에 대하여 수취인의 계좌가 개설되어 있는 금융기관 또는 회사의 계좌의 원장에의 입금기록 또는 전자적 장치에의 입력이 끝나기 전까지 거래지시를 철회할 수 있습니다.
							② 회사는 회원의 거래지시의 철회에 따라 지급거래가 이루어지지 않은 경우 수령한 자금을 회원에게 반환하여야 합니다.
							
							제19조 (한도 등)
							회사의 정책 및 결제업체(이동통신사,카드사 등)의 기준에 따라 회원의 결제수단 별 월 누적 결제액 및 결제한도가 제한될 수 있습니다.
							
							제20조 (접근매체의 관리)
							① 회사는 전자지급결제대행 서비스 제공 시 접근매체를 선정하여 회원의 신원, 권한 및 거래지시의 내용 등을 확인합니다.
							② 회원은 접근매체를 사용함에 있어서 다른 법률에 특별한 규정이 없는 한 다음 각 호의 행위를 하여서는 아니 됩니다.
							1. 접근매체를 양도하거나 양수하는 행위
							2. 접근매체를 대여하거나 사용을 위임하는 행위
							3. 접근매체를 질권 기타 담보 목적으로 하는 행위
							4. 1호부터 3호까지의 행위를 알선하는 행위
							③ 회원은 자신의 접근매체를 제3자에게 누설 또는 노출하거나 방치하여서는 안되며, 접근매체의 도용이나 위조 또는 변조를 방지하기 위하여 충분한 주의를 기울여야 합니다.
							④ 회사는 회원으로부터 접근매체의 분실이나 도난 등의 통지를 받은 때에는 그 때부터 제3자가 그 접근매체를 사용함으로 인하여 회원에게 발생한 손해를 배상할 책임이 있습니다.
						</div>
						<div style="margin-left:60%; margin-top: 30px;">
							<label><input type="radio" id="agreeB1" name="agreeB" value="Y" style="float: right;"></label>&nbsp;&nbsp;<label for="agreeB1">동의합니다. </label>&nbsp;&nbsp;
							<label><input type="radio" id="agreeB2" name="agreeB" value="N" checked="checked" style="float: right;"></label>&nbsp;&nbsp;<label for="agreeB2">동의하지 않습니다. </label>
						</div>							
					
						<br><br>
						<div style="text-align: center;">
						<label><input type="radio" id="agreeAll"></label>&nbsp;&nbsp;<label for="agreeall">모두 동의합니다.</label><br><br>
							<button id="agree" class="site-btn" style="width:20%; height: 80px;">
                                동의
                            </button>
							<button class="site-btn" style="width:20%; height: 80px;" onclick="location.href='login.html'">
									취소하기
							</button>
						</div>
                    </div>
				</div>
			</div>
			<!-- Page end -->
			<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
				All rights reserved </p></div>
			</div>
		</div>
	</div>
	<!-- Main section end -->
	<script>
		
	 $(function(){
		$('#agreeAll').click(function(){
			$('#agreeA1').prop('checked',true);
			$('#agreeB1').prop('checked',true);
		});

		$('#agreeA2').click(function(){
			$('#agreeAll').prop('checked',false);
		});

		$('#agreeB2').click(function(){
			$('#agreeAll').prop('checked',false);
		}); 
		
		var agreeA = $("input[name='agreeA']").is(":checked").val;	
		var agreeB = $("input[name='agreeB']:checked").val;	
		console.log(agreeA,agreeB);	
		console.log($("input[name='agreeA']:checked").val,$("input[name='agreeB']:checked").val);

		$('#agree').click(function(){
			if($('#agreeA1').is(":checked") == false || $('#agreeB1').is(":checked") == false){
		  		alert("동의해주세요");
				  
				  if($('#agreeA1').is(":checked") == false){
					$('#agreeA1').focus();
				  }else if($('#agreeB1').is(":checked") == false){
					$('#agreeB1').focus();
				  }
		 	}
		 	else{
		  	location.href='signUp.html'
			}
		});
		
	});
		
		
    </script>
	
	<!--====== Javascripts & Jquery ======-->
	
	<script src="../resources/js/bootstrap.min.js"></script>
	<script src="../resources/js/owl.carousel.min.js"></script>
	<script src="../resources/js/jquery.nicescroll.min.js"></script>
	<script src="../resources/js/circle-progress.min.js"></script>
	<script src="../resources/js/jquery.magnific-popup.min.js"></script>
	<script src="../resources/js/main.js"></script>

	</body>
</html>
