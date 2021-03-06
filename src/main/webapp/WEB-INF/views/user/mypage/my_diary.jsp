<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>WEHAN - 위대한 한걸음</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="resources/images/sitelogo.png" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<!-- <link rel="stylesheet" href="resources/css/bootstrap.min.css"/> -->
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/style.css"/>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
	<link href='resources/packages/core/main.css' rel='stylesheet' />
	<link href='resources/packages/daygrid/main.css' rel='stylesheet' />
	<link href='resources/packages/timegrid/main.css' rel='stylesheet' />
	<link href='resources/packages/list/main.css' rel='stylesheet' />
	<script src='resources/packages/core/main.js'></script>
	<script src='resources/packages/interaction/main.js'></script>
	<script src='resources/packages/daygrid/main.js'></script>
	<script src='resources/packages/timegrid/main.js'></script>
	<script src='resources/packages/list/main.js'></script>
	<!-- <script src='resources/packages/bundle/locales/ko.js'></script> -->
	
	<link rel="stylesheet" href='resources/packages/custom/css/bootstrap-datetimepicker.min.css' />
    <link rel="stylesheet" href="resources/packages/custom/css/bootstrap.min.css">
    
    <script src="resources/packages/custom/js/moment.min.js"></script>   
    <script src="resources/packages/custom/js/bootstrap-datetimepicker.min.js"></script>
    
    
<script>
var calendar = "";
var dId = "";
var calendarEl = "";
var events = [];
      
      /* 달력 세팅*/
	  setCalendar = function setCalendar(){
	  		calendarEl = document.getElementById('calendar');
            calendar = new FullCalendar.Calendar(calendarEl, {
              plugins: [ 'interaction', 'dayGrid', 'timeGrid',  'list' ],
              header: {
                left: 'prev,next today',
                center: 'title',
                right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
              },
              defaultDate: new Date(),
              navLinks: true,
              selectable: true,
              selectMirror: true,
              select: function select(arg){
                var rowTitle = prompt('Write Title(under 15):');
                var title = "";
                if(rowTitle){
	                title = rowTitle.substr(0, 15);
                }
                if (title) {
                  var content = prompt('Write Content:');
                  /* 일정 입력하기(INSERT) */
                  $.ajax({
                      url:'calendarInsert.do',
                      dataType:'json',
                      type:'post',
                      data:{
                      	dTitle:title,
                      	dContent:content,
                      	sDate:moment(arg.start).format("YYYY-MM-DD HH:mm"),
                      	eDate:moment(arg.end).format("YYYY-MM-DD HH:mm"),
                      	dColor:'#FFEB87',
                      	cntStamp:0
                      },success:function(data){
                    	  $('#calendar').remove();
                    	  $('#dich').append("<div id='calendar'></div>");
                    	  events = [];
                    	  selectCalendar();
                      },error:function(){
                    	  alert('일정 입력 오류');
                      }
                  });
                  calendar.addEvent({
                    title: title,
                    start: arg.start,
                    end: arg.end,
                    allDay: true,
                    color: '#FFEB87',
                    dContent: content
                  });
                  $("input:radio[name='color_select']:radio[value='color1']").prop('checked',true);
            	  $('#modalTitle, #modalFooter').css('background','#FFEB87');
                }
                calendar.unselect()
              },
              editable: true,
              eventLimit: true,
              events: events,
              titleFormat: { 
           	    year: 'numeric',
           	    month: '2-digit',
           	    day: '2-digit'
           	  },
              //locale: 'ko', // 한국어표시, "일"표시가 보기 안좋음
              /* eventClick: function(info) {
                
                info.el.style.borderColor = 'red';
              },  */
              
              /* 일정 불러오기(SELECTONE) */
              eventClick:  function(info) {
                  $('#modalTitle').html(info.event.title);
                  
                  $('#sDate').val(moment(info.event.start).format("YYYY-MM-DD HH:mm"));
                  $('#eDate').val(moment(info.event.end).format("YYYY-MM-DD HH:mm"));
                  $('#dContent').val(info.event.extendedProps.dContent);
                  if(info.event.extendedProps.dColor=='#FFEB87'){
                	  $("input:radio[name='color_select']:radio[value='color1']").prop('checked',true);
                	  $('#modalTitle, #modalFooter').css('background','#FFEB87');
                  }else if(info.event.extendedProps.dColor=='#F59B82'){
                	  $("input:radio[name='color_select']:radio[value='color2']").prop('checked',true);
                	  $('#modalTitle, #modalFooter').css('background','#F59B82');
                  }else if(info.event.extendedProps.dColor=='#D9A4FF'){
                	  $("input:radio[name='color_select']:radio[value='color3']").prop('checked',true);
                	  $('#modalTitle, #modalFooter').css('background','#D9A4FF');
                  }else if(info.event.extendedProps.dColor=='#89D1E8'){
                	  $("input:radio[name='color_select']:radio[value='color4']").prop('checked',true);
                	  $('#modalTitle, #modalFooter').css('background','#89D1E8');
                  }else if(info.event.extendedProps.dColor=='#B7FFA6'){
                	  $("input:radio[name='color_select']:radio[value='color5']").prop('checked',true);
                	  $('#modalTitle, #modalFooter').css('background','#B7FFA6');
                  }
                  
                  $('#stat').slideDown(500);
                  
               	  dId = info.event.id;
            	},
            	
            	eventDrop: function(info) {
                         /* 일정 드래그 업데이트하기(UPDATE) */
	                	 $.ajax({
	       	        	  url: 'calendarUpdateDragResize.do',
	       	        	  dataType:'json',
	       	        	  type: 'post',
	       	        	  data: {
	       	        		  dId:info.event.id,
	       	        		  sDate:moment(info.event.start).format("YYYY-MM-DD HH:mm"),
	       	        		  eDate:moment(info.event.end).format("YYYY-MM-DD HH:mm")
	       	        	  },
	       	        	  success:function(data){
	       	        	  	  console.log(data + '개 행이 업데이트되었습니다.');
	       	        	  $('#calendar').remove();
	       	            	  $('#dich').append("<div id='calendar'></div>");
	       	            	  events = [];
	       	            	  selectCalendar();
	       	        	  },
	       	        	  error:function(){
	       	        		  console.log('일정 드래그 업데이트 오류');
	       	        	  }
	       	        });
	           	},
	           	
	           	eventResize: function(info) {
	                   	/* 일정 리사이즈 업데이트하기(UPDATE) */
	                   	$.ajax({
	                    	  url: 'calendarUpdateDragResize.do',
	                    	  dataType:'json',
	                    	  type: 'post',
	                    	  data: {
	                    		  dId:info.event.id,
	                    		  sDate:moment(info.event.start).format("YYYY-MM-DD HH:mm"),
	                    		  eDate:moment(info.event.end).format("YYYY-MM-DD HH:mm")
	                    	  },
	                    	  success:function(data){
	                    	  	  console.log(data + '개 행이 업데이트되었습니다.');
	                    	  $('#calendar').remove();
	                        	  $('#dich').append("<div id='calendar'></div>");
	                        	  events = [];
	                        	  selectCalendar();
	                    	  },
	                    	  error:function(){
	                    		  console.log('일정 드래그 업데이트 오류');
	                    	  }
	                    });
	           	  }
	           	
            });
            calendar.render(); 
	  }
	  
    /* 일정 불러오기(SELECTLIST) */
    selectCalendar = function selectCalendar(){
    $.ajax({
        contentType:'application/json',
        dataType:'json',
        url:'calendarView.do',
        type:'post',
        success:function(data){
            $.each(data, function (index, value) {
                events.push({
                	id: value.dId,
                    title: value.dTitle,
                    start: value.sDate,
                    end: value.eDate,
                    color: value.dColor,
                    allDay: true,
                    dColor: value.dColor,
                    dContent: value.dContent
                    //color : "#FF0000",
                    //textColor : "#FFFF00",
                    //borderColor : "#FF4500"
                });
            });
            setCalendar();
        },
        error:function(){
            alert('리스트 출력 오류');
        }
      });
	}
    
    /* 일정 삭제하기(DELETE) */
    deleteCalendar = function deleteCalendar(){
  	  $('#btnDelete').click(function(){
  	 	  calendar.getEventById(dId).remove();
  	 	  $('#stat').slideUp(500);
  	 	  $.ajax({
  	 		  url: 'calendarDelete.do',
  	 		  dataType:'json',
  	 		  type: 'post',
  	 		  data: {dId:dId},
  	 		  success:function(data){
  	 		  	  console.log(data + '개 행이 삭제되었습니다.');
  	 		  },
  	 		  error:function(){
  	 			  console.log('일정 삭제 오류');
  	 		  }
  	 	  });
  	   });
    }
    
    /* 일정 업데이트하기(UPDATE) */
    updateCalendar = function updateCalendar(){
   	  $('#btnUpdate').click(function(info){
	   		var event = calendar.getEventById(dId);
   		  	var sDate = $('#sDate').val();
   		  	var eDate = $('#eDate').val();
	   		var dContent = $('#dContent').val();
   		  	var dTitle = $('#modalTitle').html();
   		  	var dColor = "";
   		    //$("input:radio[name='color_select']:radio[value='color1']").prop('checked',true);
   		  	var rawColor = $("input:radio[name='color_select']:checked").val();
   		  	if(rawColor=='color1'){
   		  		dColor = "#FFEB87";
   		  	}else if(rawColor=='color2'){
   		  		dColor = "#F59B82";
   		  	}else if(rawColor=='color3'){
   		  		dColor = "#D9A4FF";
   		  	}else if(rawColor=='color4'){
   		  		dColor = "#89D1E8";
   		  	}else{
   		  		dColor = "#B7FFA6";
   		  	}
   		  	
	   		 $.ajax({
	 	 		  url: 'calendarUpdate.do',
	 	 		  dataType:'json',
	 	 		  type: 'post',
	 	 		  data: {
	 	 			  dId:dId,
	 	 			  dTitle:dTitle,
	 	 			  dContent:dContent,
	 	 			  dColor:dColor,
	 	 			  sDate:sDate,
	 	 			  eDate:eDate
	 	 		  },
	 	 		  success:function(data){
	 	 		  	  console.log(data + '개 행이 업데이트되었습니다.');
		 	 		  $('#calendar').remove();
	              	  $('#dich').append("<div id='calendar'></div>");
	              	  events = [];
	              	  selectCalendar();
	 	 		  },
	 	 		  error:function(){
	 	 			  console.log('일정 업데이트 오류');
	 	 		  }
	 	 	  });
   		  	
	   		event.setProp('title', dTitle);
	   		event.setStart(sDate);
	   		event.setEnd(eDate);
	   		event.setProp('color', dColor);
	   		$('#stat').slideUp(500);
   	  });
    }
  
    /* 페이지 로드 시 */
    $(function(){
	   	selectCalendar();
	   	deleteCalendar();
	   	updateCalendar();
	   	
	    $('#cs1').click(function(){
	    	$('#modalTitle,#modalFooter').css('background', '#FFEB87');
	    });
	    $('#cs2').click(function(){
	    	$('#modalTitle,#modalFooter').css('background', '#F59B82');
	    });
	    $('#cs3').click(function(){
	    	$('#modalTitle,#modalFooter').css('background', '#D9A4FF');
	    });
	    $('#cs4').click(function(){
	    	$('#modalTitle,#modalFooter').css('background', '#89D1E8');
	    });
	    $('#cs5').click(function(){
	    	$('#modalTitle,#modalFooter').css('background', '#B7FFA6');
	    });
    });
  
    
  
  
 	/* window.location.reload(); */
  
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
    font-size: 14px;
  }
  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }
  
  /* 달력클릭시 팝업창에서 색고르는 항목 */
  .box-radio-input input[type="radio"]{
      display:none;
  }
  .box-radio-input input[type="radio"] + div{
      width: 44px;
      height: 44px;
      display:inline-block;  
      cursor:pointer;
      border:1px solid black;   
      padding:1px;
  }
  .box-radio-input input[type="radio"]:checked + div{
      padding: 0px;
      border:2px solid black;   
  }
  
  a:link { text-decoration: none; color:#242424;}
  a:visited { text-decoration: none;}
  a:hover { text-decoration: none;}
  
  .main-sidebar .mb-warp {
     padding: 45px 95px 100px 115px;
  }
  
  #calendar .fc-title{
  	color:#333333;
  }
  
  #calendar h2{
  	font-weight:bold;
  }
  
  #calendar{
  	border: 1px solid gray;
  }
  
  #calendar .fc-day-number{
  	color:#333333;
  }
  
  #calendar .fc-today{
  }
  
  #calendar a:visited { text-decoration: none;}
  #calendar a:hover { text-decoration: none;}
  
  .fc-unthemed td.fc-today {
    background: #c7c7c7;
  }
  
  .fc-day-header a{
  	color: #333333;
  }
  
  .fc-toolbar{
  	background:#333333;
  	color: white;
  }
  /* fc-day-header fc-widget-header */
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
		<header class="header-section" style="margin-top: -40px; margin-left:-10px">
			<div class="nav-switch menuIcon msgCount">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-social" style='font-family:"Open Sans",sans-serif;'>
                <a href="my_profileView.do">Profile</a>
                <a href="my_challengeView.do">Challenge</a>
                <a href="my_diaryView.do" style="color: red;">Diary</a>
				<a href="getMsgList.do">Message</a>
			</div>
		</header>
		
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
				<div class="mb-warp">

                    <a href="indexView.do" class="site-logo">
						<h2 style="margin-left: 6px;">위대한 한걸음</h2>
						<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
					</a>
					<div id="lv" style="width: 350px; height: 470px; border: 1px solid gray; padding:20px;  margin-top: -20px">
						<div style="width: 300px; height:320px; margin:auto; background-image: url('resources/images/level/green.gif'); background-size: 450px 450px; border-radius: 15px;">
							<img id="lv-img" src="">
						</div>
						<div style="width: 300px; margin:auto; margin-top: 10px;">
							<div style="text-align:left">
								<div id="nickName" style="font-size:24px; margin-bottom: 10px; text-align:left"><b>${loginUser.nickName}</b></div>
								<span style="font-size:16px;">Lv</span>
								<span class="lv-txt2" style="font-size:16px; margin-bottom: 5px; text-align:left">${ mypage.myLevel }</span>
								<!-- <div id="lv-txt2" style="font-size:16px; margin-bottom: 5px; text-align:left" >Lv 4</div> -->
							</div>
							<div class="progress" style="border:1px solid gray; margin-bottom:-3px; ">
								<div id="progress-bar" class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar"
									aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:0%">${ mypage.myExp }
								</div>
						    </div>
							<div class="exp-min" style="width: 140px; text-align:left; display:inline-block; font-size: 12px">
								0
							</div>
							<div class="exp-max" style="width: 140px; text-align:right; display:inline-block; font-size: 12px">
								-1
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class='exp-txt' style='display:none'>${mypage.myExp }</div>
			
			<script>
			var $lv2 = $('.lv-txt2').text();
			var $exp = $('.exp-txt');
			var $expMax = $('.exp-max');
			var $progress = $("#progress-bar");
			var percent = 0;
			
			var currentLv = 0;
			var currentExp = 0;
			/* lv1 */
			if($lv2==1){
				$expMax[0].innerText = 5;
				percent = ($exp[0].innerText / 5) * 100;
				percent += '%';
				$progress.css('width',percent);
				$progress[0].innerText = 'Exp ' + $exp[0].innerText;
				$("#lv-img").attr("src", "resources/images/level/lv1.png");
			/* lv2 */
			}else if($lv2==2){
				$expMax[0].innerText = 10;
				percent = ($exp[0].innerText / 10) * 100;
				percent += '%';
				$progress.css('width',percent);
				$progress[0].innerText = 'Exp ' + $exp[0].innerText;
				$("#lv-img").attr("src", "resources/images/level/lv2.png");
			/* lv3 */
			}else if($lv2==3){
				$expMax[0].innerText = 15;
				percent = ($exp[0].innerText / 15) * 100;
				percent += '%';
				$progress.css('width',percent);
				$progress[0].innerText = 'Exp ' + $exp[0].innerText;
				$("#lv-img").attr("src", "resources/images/level/lv3.png");
			/* lv4 */
			}else if($lv2==4){
				$expMax[0].innerText = 20;
				percent = ($exp[0].innerText / 20) * 100;
				percent += '%';
				$progress.css('width',percent);
				$progress[0].innerText = 'Exp ' + $exp[0].innerText;
				$("#lv-img").attr("src", "resources/images/level/lv4.png");
			/* lv5 */ 
			}else if($lv2==5){
				$expMax[0].innerText = 25;
				percent = ($exp[0].innerText / 25) * 100;
				percent += '%';
				$progress.css('width',percent);
				$progress[0].innerText = 'Exp ' + $exp[0].innerText;
				$("#lv-img").attr("src", "resources/images/level/lv5.png");
			/* lv6 */
			}else{
				$expMax[0].innerText = 999;
				percent = ($exp[0].innerText / 999) * 100;
				percent += '%';
				$progress.css('width',percent);
				$progress[0].innerText = 'Exp ' + $exp[0].innerText;
				$("#lv-img").attr("src", "resources/images/level/lv6.png");
				
				currentLv = 6;
				currentExp = countComplete-75;
			}
			</script>
			<!-- Left Side section end -->
			<!-- Page start -->
			<!-- <div id='itemContainer' style="width:900px; height:200px; margin-left: 185px; overflow-y: auto; margin-bottom: 50px; border:1px solid; -webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75); -moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);">
				<div id='item1' style="display:inline-block; width:880px; height:200px; background:red;"></div>
				<div id='item2' style="display:inline-block; width:880px; height:200px; background:blue;"></div>
				<div id='item2' style="display:inline-block; width:880px; height:200px; background:yellow;"></div>
			</div> -->
			
			<div id='dich'></div>
			<div id='calendar'></div>
			
			<div id='stat' style="display:none; background: white; width:500px; height:498px; position:absolute; left: 1000px; top: 200px; border-radius:5px; box-shadow : rgba(0,0,0,0.5) 0 0 0 9999px; z-index : 100;
			-webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75); -moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);">
				<div id='modalX' style="width:20px; height:20px; margin-top: 20px; margin-right:20px; float:right; font-size:18px; cursor:pointer;">X</div>
				<div id='modalTitle' style="width:500px; height:60px; padding-left:50px; padding-top:14px; background: lightgray; font-weight:bold; font-size: 24px"></div>
				<div id='modalBody' style="width:500px; height:380px; padding-left:50px; margin-top:-1px; padding-top:20px; background: white;">
					<div id='modalBody3' style="width:500px; height:80px; padding-top: 20px">
						<label class="box-radio-input"><input type="radio" id="cs1" name="color_select" value="color1" checked="checked"><div><div style="background: #FFEB87; width: 40px; height: 40px;"></div></div></label>
					    <label class="box-radio-input"><input type="radio" id="cs2" name="color_select" value="color2"><div><div style="background: #F59B82;width: 40px; height: 40px;"></div></div></label>
					    <label class="box-radio-input"><input type="radio" id="cs3" name="color_select" value="color3"><div><div style="background: #D9A4FF; width: 40px; height: 40px;"></div></div></label>
					    <label class="box-radio-input"><input type="radio" id="cs4" name="color_select" value="color4"><div><div style="background: #89D1E8; width: 40px; height: 40px;"></div></div></label>
					    <label class="box-radio-input"><input type="radio" id="cs5" name="color_select" value="color5"><div><div style="background: #B7FFA6; width: 40px; height: 40px;"></div></div></label>
					</div>
					<div style="display:inline-block; width:220px; height:25px;">시작일</div>
					<div style="display:inline-block; width:180px; height:25px;">종료일</div>
					<div id='modalBody4' style="width:500px; height:30px; position:relative;">
						<div style="width:400px; height:50px;">
							<input type='text' id='sDate'>
							<input type='text' id='eDate' style="float:right">
						</div>
					</div>
					
					<div id='modalBody5' style="width:500px; height:100px; margin-top:30px">
						<div style="width:400px; height:25px;">메모</div>
						<textarea id='dContent' cols="54" rows="7" style="resize: none; background:white;"></textarea>
					</div>
				</div>
				<div id="modalFooter" style="width:500px; height:60px; text-align:center; margin-top:-1px; padding-top:15px; background: lightgray;">
					<button id='btnUpdate'>저장</button>
					<button id='btnDelete'>삭제</button>
				</div>
			</div>
			
			<script>
				$('#modalX').click(function(){
					/* $('#stat').css('display','none'); */
					$('#stat').slideUp(500);
				});
				
				$("#sDate, #eDate").datetimepicker({
		            format: 'YYYY-MM-DD HH:mm'
		        });
			</script>
		</div>
			<!-- <div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
		           All rights reserved </p></div>
			</div> -->
	<!-- Main section end -->
	
	<!--====== Javascripts & Jquery ======-->
	<!-- <script src="resources/js/jquery-3.2.1.min.js"></script> -->
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.nicescroll.min.js"></script>
	<script src="resources/js/circle-progress.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/main.js"></script>
	

	</body>
</html>