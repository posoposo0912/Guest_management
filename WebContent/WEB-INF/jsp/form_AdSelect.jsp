<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

      <button type="button" id="btn2" name = "test" onclick="location.href='topPage.html'">戻る</button>
    <br><br><br>
    <div class="container">
        　<div class="row">
              <div class="col s12 center">
                    <div class="card amber lighten-4">
                            <div class="card-content black-text">

                              <div class="top">送信先入力</div>
                              <br><br><br>
                              <form  method="POST">
                                <div>
                                         <label for="name" >名前</label><br/>
                                    <br/><input type="email" id="name" name="name">
                                
                                    <label for="email" >メールアドレス</label><br/>
                                    <br/><input type="email" id="email" name="email">
                                </div>
                                <!----<input type="submit" value="送信"> -->
                                <br/><br><br><br>
                                <button type="button" id="btn2" name = "test" onclick="location.href='form_Check.html'">かくにん</button>
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