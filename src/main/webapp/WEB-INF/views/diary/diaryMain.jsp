<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- ȭ�� �ػ󵵿� ���� ���� ũ�� ����(����� ����) -->
  <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
  <!-- jquery CDN -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <!-- fullcalendar CDN -->
  <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
  <!-- fullcalendar ��� CDN -->
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
<title>haru diary</title>
<style>
  /* body ��Ÿ�� */
  html, body {
    overflow: hidden;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }
  /* Ķ���� ���� �ش� ��Ÿ��(��¥�� �ִ� �κ�) */
  .fc-header-toolbar {
    padding-top: 1em;
    padding-left: 1em;
    padding-right: 1em;
  }
</style>
</head>
<body style="padding:30px;">
  <!-- calendar �±� -->
  <div id='calendar-container'>
    <div id='calendar'></div>
  </div>
  <script>
  (function(){
    $(function(){
      // calendar element ���
      var calendarEl = $('#calendar')[0];
      // full-calendar �����ϱ�
      var calendar = new FullCalendar.Calendar(calendarEl, {
        height: '700px', // calendar ���� ����
        expandRows: true, // ȭ�鿡 �°� ���� �缳��
        slotMinTime: '08:00', // Day Ķ�������� ���� �ð�
        slotMaxTime: '20:00', // Day Ķ�������� ���� �ð�
        // �ش��� ǥ���� ����
        headerToolbar: {
          left: 'prev,next today',
          center: 'title',
          right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
        },
        initialView: 'dayGridMonth', // �ʱ� �ε� �ɶ� ���̴� Ķ���� ȭ��(�⺻ ����: ��)
      //  initialDate: '2021-07-15', // �ʱ� ��¥ ���� (�������� ������ ���� ��¥�� ���δ�.)
        navLinks: true, // ��¥�� �����ϸ� Day Ķ������ Week Ķ������ ��ũ
      //  editable: true, // ���� ����?
        selectable: true, // �޷� ���� �巡�� ��������
        nowIndicator: true, // ���� �ð� ��ũ
        dayMaxEvents: true, // �̺�Ʈ�� �����Ǹ� ���� ���� (+ �� �������� ǥ��)
        locale: 'en', // �ѱ��� ����
        eventAdd: function(obj) { // �̺�Ʈ�� �߰��Ǹ� �߻��ϴ� �̺�Ʈ
          console.log(obj);
        },
        eventChange: function(obj) { // �̺�Ʈ�� �����Ǹ� �߻��ϴ� �̺�Ʈ
          console.log(obj);
        },
        eventRemove: function(obj){ // �̺�Ʈ�� �����Ǹ� �߻��ϴ� �̺�Ʈ
          console.log(obj);
        },
      /*  select: function(arg) { // Ķ�������� �巡�׷� �̺�Ʈ�� ������ �� �ִ�.
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
        // �̺�Ʈ 
       // �̺�Ʈ 
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
            url: 'http://google.com/', // Ŭ���� �ش� url�� �̵�
            start: '2024-07-28'
          }
        ] */
      });
      // Ķ���� ������
      calendar.render();
    });
  })();
</script>
</body>
</html>