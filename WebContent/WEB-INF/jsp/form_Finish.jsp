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
        <a  class="brand-logo" id="iko">ゲスト管理アプリ</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
          <li class="active"><a href="/css/">ヘルプ</a></li>
          <li><a href="/html/">お問い合わせ</a></li>

        </ul>
      </div>
    </div>


     <!--ここまで-->
  </nav>
  <div role="main">
    <!-- グリッドデザイン -->
    <br><br><br>
    <div class="container">
        <div class="row">
              <div class="col s12 center">
                    <div class="card amber lighten-4">
                            <div class="card-content black-text">
                                <div class="top">送信先確認</div><br><br>
                              <p class="text">送信が完了しました</p><br/><br/>
                            </div>
                            <div class="card-action">
                              <a href="${pageContext.request.contextPath}/Main" class="yellow-text text-darken-4" id="link_top">トップへもどる</a>
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