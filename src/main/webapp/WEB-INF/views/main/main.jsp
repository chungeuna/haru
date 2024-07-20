<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- 화면 해상도에 따라 글자 크기 대응(모바일 대응) -->
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<!-- jquery CDN -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- fullcalendar CDN -->
	<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
	<!-- fullcalendar 언어 CDN -->
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	html, body {
		margin : 0;
		height : 100%;
		overflow : hidden;
    	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    	font-size: 14px;
	}
	#mainHdr {
		border : 1px solid silver;
		background-color : white;
		height : 20%;
		width : 100%; 
	}
	/*************** Container Start *********************/
	#mainContainer {
		height : 64%;
		width : 100%;
		display : flex;
		flex-direction : row;
	}
	#mainNav {
		border : 1px solid silver;
		background-color : grey;
		height : 100%;
		width : 20%;
	}
	#mainSctn {
		border : 1px solid silver;
		background-color : yellow;
		height : 100%;
		width : 70%; 
	}
	#mainAsd {
		border : 1px solid silver;
		background-color : grey;
		height : 100%;
		width : 10%;
	}
	#profileImgDiv {
		border : 1px solid silver;
		height : 40%;
		width : 90%;
	}
	#recentDiarySummaryTbl {
		border : 1px solid silver;
		height : 100%;
		width : 100%;
	}
	#diaryOutlineTbl {
		border : 1px solid silver;
		height : 100%;
		width : 100%;
	}
	/*************** Container End *********************/
	/* 캘린더 위의 해더 스타일(날짜가 있는 부분) */
	.fc-header-toolbar {
	    padding-top: 1em;
	    padding-left: 1em;
	    padding-right: 1em;
	}
</style>
<script>
  (function(){
    $(function(){
      // calendar element 취득
      var calendarEl = $('#calendar')[0];
      // full-calendar 생성하기
      var calendar = new FullCalendar.Calendar(calendarEl, {
        height: '300px', // calendar 높이 설정
        expandRows: true, // 화면에 맞게 높이 재설정
        slotMinTime: '08:00', // Day 캘린더에서 시작 시간
        slotMaxTime: '20:00', // Day 캘린더에서 종료 시간
        // 해더에 표시할 툴바
        headerToolbar: {
          left: 'prev,next today',
          center: 'title',
          right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
        },
        initialView: 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
      //  initialDate: '2021-07-15', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
        navLinks: true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
      //  editable: true, // 수정 가능?
        selectable: true, // 달력 일자 드래그 설정가능
        nowIndicator: true, // 현재 시간 마크
        dayMaxEvents: true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
        locale: 'en', // 한국어 설정
        eventAdd: function(obj) { // 이벤트가 추가되면 발생하는 이벤트
          console.log(obj);
        },
        eventChange: function(obj) { // 이벤트가 수정되면 발생하는 이벤트
          console.log(obj);
        },
        eventRemove: function(obj){ // 이벤트가 삭제되면 발생하는 이벤트
          console.log(obj);
        },
      /*  select: function(arg) { // 캘린더에서 드래그로 이벤트를 생성할 수 있다.
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
        } */
        // 이벤트 
       // 이벤트 
    /*    events: [
          {
            title: 'All Day Event',
            start: '2024-07-01',
          },
          {
            title: 'Long Event',
            start: '2024-07-07',
            end: '2024-07-10'
          },
          {
            groupId: 999,
            title: 'Repeating Event',
            start: '2024-07-09T16:00:00'
          },
          {
            groupId: 999,
            title: 'Repeating Event',
            start: '2024-07-16T16:00:00'
          },
          {
            title: 'Conference',
            start: '2024-07-11',
            end: '2024-07-13'
          },
          {
            title: 'Meeting',
            start: '2024-07-12T10:30:00',
            end: '2024-07-12T12:30:00'
          },
          {
            title: 'Lunch',
            start: '2021-07-12T12:00:00'
          },
          {
            title: 'Meeting',
            start: '2024-07-12T14:30:00'
          },
          {
            title: 'Happy Hour',
            start: '2024-07-12T17:30:00'
          },
          {
            title: 'Dinner',
            start: '2024-07-12T20:00:00'
          },
          {
            title: 'Birthday Party',
            start: '2024-07-13T07:00:00'
          },
          {
            title: 'Click for Google',
            url: 'http://google.com/', // 클릭시 해당 url로 이동
            start: '2024-07-28'
          }
        ] */
      });
      // 캘린더 랜더링
      calendar.render();
    });
  })();
</script>
</head>
<body>
<header id="mainHdr">
Common : Top panel

</header>
<div id="mainContainer">
	<nav id="mainNav">
		<table id="profileTable">
			<thead>
			</thead>
			<tbody>
				<tr>
					<td>
						<div id="profileImgDiv">
							profileImgDiv
							<img id="profileImg" referrerpolicy="no-referrer" src="main/bbb.png"/>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<h1>오하루(♀)</h1>
					</td>
				</tr>
				<tr>
					<td>
						2023.12.30
					</td>
				</tr>
				<tr>
					<td>
						하루하루를 살아가는 기쁨 !
					</td>
				</tr>
			</tbody>
		</table>
	</nav>
	<section id="mainSctn">
		<table style="height:100%; width:100%">
			<thead style="height:30%; width:100%;">
				<tr style="display: flex;">
					<td style="flex: 1;">
						<table id="recentDiarySummaryTbl">
							<thead>
								<tr>
									<td>
										최근 다이어리
									</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										것은 거친 모래뿐일 것이다 이상의 꽃이 없으면 쓸쓸한 인간에 남는 것은 영락과 부패 뿐이다 낙원을
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<td style="flex: 1;">
						<table id="diaryOutlineTbl">
							<thead>
								<tr>
									<td>
										다이어리 4/365
									</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										다이어리 Outline 두번째 줄
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</thead>
			<tbody style="height:70%; width:100%;">
				<tr id='calendar-container'>
					<td>
						<div id='calendar'></div>
					</td>
				</tr>
			</tbody>
		</table>
	</section>
	<aside id="mainAsd">
		Common : Aside panel
	</aside>
</div>
<footer id="mainFtr">
</footer>
</body>
</html>