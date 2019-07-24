<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="utf-8"/>
 <!--Import Google Icon Font-->
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 <!--マテリアルデザイン・カレンダー用CSSの読み込み-->
 <style>
 <%@ include file="/css/materialize.min.css" %>
 <%@ include file="/css/background.css" %>
 <%@ include file="/core/main.css" %>
 <%@ include file="/daygrid/main.css" %>
 <%@ include file="/list/main.css" %>
 <%@ include file="/timegrid/main.css" %>
 </style>
 <!--Let browser know website is optimized for mobile-->
 <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
 <!-- マテリアル系統・カレンダー部分JS読み込み -->
 <script type="text/javascript">
<%@ include file="/js/materialize.min.js" %>
<%@ include file="/js/jquery-3.4.1.min.js" %>
<%@ include file="/core/main.js" %>
<%@ include file="/daygrid/main.js" %>
<%@ include file="/interaction/main.js" %>
<%@ include file="/list/main.js" %>
<%@ include file="/core/locales-all.js" %>
<%@ include file="/timegrid/main.js" %>

</script>

<!--fullCalender関連 -->

  <script>
//matelializeにおいてselectを正しく認識されるように


     document.addEventListener('DOMContentLoaded', function() {

    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
       locale: 'en',

      plugins: [ 'interaction','dayGrid', 'timeGrid','list'],
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'

      },
      buttonText: {
    	  prev: "前",
          next: "次",
          today: "今日",
          month: "月",
          week: "週",
          day: "日",
          list: "予定リスト"
      },
      weekLabel: "週",
      allDayText: "終日",
      eventLimitText: function (n) {
          return "他 " + n + " 件";
      },
      noEventsMessage: "表示する予定はありません",

      defaultDate: '2019-06-12',
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
      eventLimit: true,
      events: [
        {
          title: 'All Day Event',
          start: '2019-06-01'
        },
        {
          title: '山田太郎',
          start: '2019-06-07',
          end: '2019-06-10'
        }
        ]
    });
    calendar.render();
  });



    </script>
</head>


<body>
  <nav>
    <div class="nav-wrapper z-depth-3">
      <div class="container">
        <a class="brand-logo" id="iko">ゲスト管理アプリ</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
          <li class="active"><a href="/css/">ヘルプ</a></li>
          <li><a href="/html/">お問い合わせ</a></li>
        </ul>
      </div>
    </div>


     <!--ここまで-->
  </nav>

  <div role="main">

<!-- return prev page -->
      <button type="button" id="btn2" name = "test" onclick="location.href='topPage.html'">戻る</button>
    <br><br><br>
    <div class="container">
        　<div class="row">
              <div class="col s12 center">
                    <div class="card amber lighten-4">
                            <div class="card-content black-text">
                          <div id="calendar">
                          </div>
            </div>
      <!-- グリデザ ここまで -->

    </div>
    </div>
    </div>
  </div>
 <!--JavaScript at end of body for optimized loading-->

<!--フォームに使う-->
 <footer class="page-footer orange lighten-2">
    <div class="container">
      <div class="row">
        <div class="col s6">

        </div>
      </div>
    </div>
    <div class="footer-copyright">

    </div>
  </footer>
  </div>
</body>

</html>