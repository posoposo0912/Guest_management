
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="model.MailForm"%>

    
    <%@page import="servlet.FormAdSelect"%>
    
    <% MailForm user = (MailForm) session.getAttribute("MailForm"); %>
    
    
    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
 <!--Import Google Icon Font-->
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 <!--Import materialize.css-->
 
  <style>
 <%@ include file="/css/materialize.min.css" %>
 <%@ include file="/css/background.css" %>
 </style>
 
 <!--Import materialize.min.js-->
<script type="text/javascript">
<%@ include file="/js/materialize.min.js" %>
</script> 

 <!--Let browser know website is optimized for mobile-->
 <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>

<body>
  <nav>
    <div class="nav-wrapper z-depth-3">
      <div class="container">
        <a href="/" class="brand-logo" id="iko">ゲスト管理アプリ</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
          <li class="active"><a href="/css/">ヘルプ</a></li>
          <li><a href="/html/">お問い合わせ</a></li>
        </ul>
      </div>
    </div>


     <!--ここまで-->
  </nav>
  <div role="main">

    <br><br><br>
    <div class="container">
        <div class="row">
              <div class="col s12 center">
                    <div class="card amber lighten-4">
                            <div class="card-content black-text">
                                <div class="top">送信先確認</div><br><br>
                                
                                 <p>名前：<%=  user.getName() %> 様</p><br/><br/>
                              <p>メールアドレス：<%= user.getEmail()%></p><br/><br/>
                              
                            </div>
                            <div class="card-action">
                            <form action="/Guest/Form" method="POST"  style="display:inline;">
                           
                            
                              <input type="submit"  class="yellow-text text-darken-4" id="link" value="変更する" >
                              </form>
                              
                              <form action="/Guest/Form_Check" method="POST" style="display:inline;">
                              <input type="submit"  class="green-text text-darken-4" id="link" value="送信する" >
                              </form>
                            </div>
                            
                          </div>
                </div>
            </div>
       </div>
      <!-- グリデザ　ここまで -->


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
      <div class="container">
      </div>
    </div>
  </footer>
  <!--ここまで-->
  <script type="text/javascript" src="js/materialize.min.js"></script>
</body>

</html>