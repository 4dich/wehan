<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>NISSA - PHOTOGRAPHY STUDIO HTML TEMPLATE</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="resources/images/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/style.css"/>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	<link href='resources/packages/core/main.css' rel='stylesheet' />
	<link href='resources/packages/daygrid/main.css' rel='stylesheet' />
	<link href='resources/packages/timegrid/main.css' rel='stylesheet' />
	<script src='resources/packages/core/main.js'></script>
	<script src='resources/packages/interaction/main.js'></script>
	<script src='resources/packages/daygrid/main.js'></script>
	<script src='resources/packages/timegrid/main.js'></script>
	
<script>

  
  
  $(function(){
    $.ajax({
        contentType:'application/json',
        dataType:'json',
        url:'calendarView.do',
        type:'post',
        success:function(data){
        	
        	console.log(data);
        	alert('성공');
        	
        	var events = [];
            $.each(data, function (index, value) {

                events.push({
                    
                    title: value[index],
                    start: '2020-04-20',
                    end:'2020-04-27'
                    
                    //all data
                });
                console.log(value)
            });
            
            var calendarEl = document.getElementById('calendar');

            var calendar = new FullCalendar.Calendar(calendarEl, {
              plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
              header: {
                left: 'prev,next today',
                center: 'title',
                right: 'dayGridMonth,timeGridWeek,timeGridDay'
              },
              defaultDate: new Date(),
              navLinks: true, // can click day/week names to navigate views
              selectable: true,
              selectMirror: true,
              select: function(arg) {
                var title = prompt('Event Title:');
                if (title) {
                  calendar.addEvent({
                    title: title,
                    start: arg.start,
                    end: arg.end,
                    allDay: arg.allDay

                    
                  })
                }
                calendar.unselect()
              },
              editable: true,
              eventLimit: true, // allow "more" link when too many events
              events: events,

              // eventSources: [
              //   {
              //     url: '/myfeed.php',
              //     method: 'POST',
              //     extraParams: {
              //       custom_param1: 'something',
              //       custom_param2: 'somethingelse'
              //     },success:function(){
              //       alert('success');
              //     },failure: function() {
              //       alert('failure');
              //     },
              //     color: 'yellow',   // a non-ajax option
              //     textColor: 'black' // a non-ajax option
              //   }
              // ],
              
              eventColor: 'red',
              eventClick: function(info) {
                alert('Event: ' + info.event.title);  // 이벤트명
                alert('Coordinates: ' + info.jsEvent.pageX + ',' + info.jsEvent.pageY); // 좌표
                alert('View: ' + info.view.type); // 페이지 형식 : 

                // change the border color just for fun
                info.el.style.borderColor = 'red';
              }
            });
            calendar.render();
          
        },
        error:function(){
            alert('에러남, 아무튼 에러남');
        }
      });
  });

</script>
<style>

	.site-logo {
        margin-bottom: 40px;
    }

    .main-sidebar .mb-warp {
        padding: 90px 95px 100px 145px;
    }
    
    .grade{
        float:left;
        margin-right: 70px;
    }
    
    .follow{
        float:left;
    }
    
    .following{
        float:none;
    }

    .menuIcon{
    background: white;
    border-radius: 20%;
    position: relative;
    }
    .menuIcon:hover{
        box-shadow: 0px 0px 0px 2px #b5b5b5;
    }
    .menuIcon img{
        width: 30px;
        height: 30px;
    }

    .menuIcon div{
        position: absolute;
        background: red;
        width: 20px;
        height: 20px;
        border-radius: 50%;
        text-align: center;
        line-height: 1.3;
        font-size: 15px;
        font-weight: bold;
        top: -10px;
        right: -10px;
	}
	
	.circle-progress h2 span {
		font-size: 40px;
		position: relative;
		display: none;
		/* top: -30px; */
	}
	
	/* tab css 수정 */
	.tab-element .nav-tabs .nav-link {
		border: 1px solid gray;
		text-align: left;
		background-color: white;
		border-radius: 0;
		position: relative;
		width: 100%;
		padding: 17px 30px;
		font-size: 14px;
		text-transform: uppercase;
		color: #323232;
		font-weight: 700;
		line-height: 1.3;
		cursor: pointer;
	}
	
	.tab-element .nav-tabs .nav-link.active {
		background: #242424;
		color: #fff;
		border-color: #242424;
	}
	
	.tab-element .nav-tabs {
		border-bottom: none;
		margin-bottom: 25px;
	}
	
	.tab-element .nav-item {
		margin-right: 10px;
		margin-bottom: 10px;
	}
	
	/* circle bar */
	.circle-item-warp {
		margin-bottom: 30px;
		overflow: hidden;
	}
	
	.circle-progress {
		float: left;
		margin-right: 10px;
	}
	
	.circle-progress canvas {
		-webkit-transform: rotate(90deg);
		transform: rotate(90deg);
	}
	
	.circle-progress .circle-warp {
		float: left;
		margin-right: 20px;
	}
	
	.circle-progress h2 {
		padding-bottom: 18px;
		overflow: hidden;
		font-size: 72px;
		font-family: "Playfair Display", serif;
		line-height: 1;
		font-weight: 900;
		position: relative;
	}
	
	.circle-progress h2 span {
		font-size: 40px;
		position: relative;
		top: -30px;
	}
	
	.circle-progress-text {
		padding-top: 15px;
	}
	
	.circle-progress-text h5 {
		font-weight: 700;
	}
	
	.circle-progress-text p {
		margin-bottom: 0;
		color: #828282;
	}

	/* progress-bar */
	@-webkit-keyframes progress-bar-stripes {
	  from {
	    background-position: 40px 0;
	  }
	  to {
	    background-position: 0 0;
	  }
	}
	@-o-keyframes progress-bar-stripes {
	  from {
	    background-position: 40px 0;
	  }
	  to {
	    background-position: 0 0;
	  }
	}
	@keyframes progress-bar-stripes {
	  from {
	    background-position: 40px 0;
	  }
	  to {
	    background-position: 0 0;
	  }
	}
	.progress {
	  height: 20px;
	  margin-bottom: 20px;
	  overflow: hidden;
	  background-color: #f5f5f5;
	  border-radius: 4px;
	  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	}
	.progress-bar {
	  float: left;
	  width: 0%;
	  height: 100%;
	  font-size: 12px;
	  line-height: 20px;
	  color: #fff;
	  text-align: center;
	  background-color: #337ab7;
	  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
	  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
	  -webkit-transition: width 0.6s ease;
	  -o-transition: width 0.6s ease;
	  transition: width 0.6s ease;
	}
	.progress-striped .progress-bar,
	.progress-bar-striped {
	  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  -webkit-background-size: 40px 40px;
	  background-size: 40px 40px;
	}
	.progress.active .progress-bar,
	.progress-bar.active {
	  -webkit-animation: progress-bar-stripes 2s linear infinite;
	  -o-animation: progress-bar-stripes 2s linear infinite;
	  animation: progress-bar-stripes 2s linear infinite;
	}
	.progress-bar-success {
	  background-color: #5cb85c;
	}
	.progress-striped .progress-bar-success {
	  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	}
	.progress-bar-info {
	  background-color: #5bc0de;
	}
	.progress-striped .progress-bar-info {
	  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	}
	.progress-bar-warning {
	  background-color: #f0ad4e;
	}
	.progress-striped .progress-bar-warning {
	  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	}
	.progress-bar-danger {
	  /* background-color: #d9534f; */
	  background-color: #242424;
	}
	.progress-striped .progress-bar-danger {
	  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	}
	
	/*스크롤바*/
/* 	.main-up::-webkit-scrollbar{
		height: 5px;
	}
	.main-down::-webkit-scrollbar{
		width: 5px;
	}
	
	.main-up::-webkit-scrollbar-thumb, .main-down::-webkit-scrollbar-thumb{
		background-color: #242424;
	}
	.main-up::-webkit-scrollbar-track, .main-down::-webkit-scrollbar-track{
		background-color: grey;
	} */


  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Main section start -->
	<div class="main-site-warp">
		
		<%@ include file="/WEB-INF/views/common/menuBar.jsp" %>

		
        <!-- 메뉴 끝 -->
		<header class="header-section">
			<div class="nav-switch menuIcon msgCount">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-social">
                <a href="my_profileView.do">My Profile</a>
                <a href="my_challengeView.do">My Challenge</a>
                <a href="my_diaryView.do" style="color: red;">My Diary</a>
				<a href="getMsgList.do">Message</a>
			</div>
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
				<div class="mb-warp" style="text-align: center;">

                    <a href="indexView.do" class="site-logo">
						<h2 style="margin-left: 6px;">위대한 한걸음</h2>
						<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
					</a>
					<div id="lv" style="width: 350px; height: 470px; border: 1px solid gray; padding:20px; margin:auto; margin-top: -30px">
						<div id="lv-img" style="width: 300px; height:320px; margin:auto; background-image: url('resources/images/level/astro2.gif'); background-size: cover; border-radius: 15px;">
							<img src="resources/images/level/lv4.png">
						</div>
						<div id="lv-progress" style="width: 300px; margin:auto; margin-top: 10px;">
							<div>
								<div id="nickName" style="font-size:24px; margin-bottom: 10px; text-align:left"><b>${loginUser.nickName}</b></div>
								<div id="lv-text" style="font-size:16px; margin-bottom: 5px; text-align:left" >Lv 4</div>
							</div>
							<div class="progress" style="border:1px solid gray; margin-bottom:-3px; ">
								<div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar"
									aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:66%"> Exp 10
								</div>
						    </div>
							<div id="lv-progress1" style="width: 140px; text-align:left; display:inline-block; font-size: 12px">
								0
							</div>
							<div id="lv-progress2" style="width: 140px; text-align:right; display:inline-block; font-size: 12px">
								15
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			
			<div id='calendar'></div>
			
			<!-- Page end -->
		</div>
		<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
            All rights reserved </p></div>
		</div>
	</div>
	<!-- Main section end -->
	
	<!--====== Javascripts & Jquery ======-->
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.nicescroll.min.js"></script>
	<script src="resources/js/circle-progress.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/main.js"></script>

	</body>
</html>
