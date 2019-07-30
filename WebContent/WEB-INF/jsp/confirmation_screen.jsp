
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="model.Form"%>
    <%@page import="servlet.Confirmation_screen"%>
    
<% Form formUser = (Form) session.getAttribute("Form"); %>


<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>入力確認画面</title>

<link rel="stylesheet"
	href="./style.css">
	<script src="jquery-3.4.1.min.js"></script>
	<script src="ajaxzip3.js" charset="UTF-8"></script>
	 <style> <%@ include file="/css/style.css" %></style>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/themes/confetti.css">
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/ui-lightness/jquery-ui.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/themes/confetti.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ja.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.rawgit.com/jonthornton/jquery-timepicker/3e0b283a/jquery.timepicker.min.css">
<script src="https://cdn.rawgit.com/jonthornton/jquery-timepicker/3e0b283a/jquery.timepicker.min.js"></script>
<!--------------------------------------------------------------------------------------------------------->
</head>
<body>
<div><h1>イートンちどり保育園</h1></div>
<div><h2>入力内容確認</h2></div>
<div>
    <form action="/Guest/Confirmation_screen" method="post">

            <input type="hidden" name="name" value="">
            <input type="hidden" name="furigana" value="">
            <input type="hidden" name="email" value="">
            <input type="hidden" name="tel" value="">
            <input type="hidden" name="sex" value="">
            <input type="hidden" name="item" value="">
            <input type="hidden" name="content" value="">
            <h1 class="contact-title">入力内容確認</h1>
            <p>入力内容はこちらで宜しいでしょうか？<br>よろしければ「送信する」ボタンを押して下さい。</p>
            <div>
               <div>
                    <label>団体名</label>
                    <p><%=formUser.getConame() %></p>
                </div>
                <div>
                    <label>お名前</label>
                    <p><%=formUser.getName() %></p>
                </div>
                <div>
                    <label>ふりがな</label>
                    <p><%=formUser.getKana() %></p>
                </div>
                   <div>
                    <label>来園人数</label>
                    <p><%=formUser.getDay() %></p>
                </div>
                   <div>
                    <label>来園日</label>
                    <p><%=formUser.getComeday() %></p>
                </div>
                   <div>
                    <label>入園時間</label>
                    <p><%=formUser.getCometime() %></p>
                </div>
                   <div>
                    <label>退園時間</label>
                    <p><%=formUser.getByetime() %></p>
                </div>
                <div>
                    <label>メールアドレス</label>
                    <p><%=formUser.getEmail() %></p>
                </div>
                <div>
                    <label>電話番号</label>
                    <p><%=formUser.getTel() %></p>
                </div>
                <div>
                    <label>生年月日</label>
                    <p><%=formUser.getBday() %></p>
                </div>
                   <div>
                    <label>郵便番号</label>
                    <p><%=formUser.getZip01() %></p>
                </div>
                   <div>
                    <label>都道府県</label>
                    <p><%=formUser.getPref01() %></p>
                </div>
                   <div>
                    <label>以降の住所</label>
                    <p><%=formUser.getAddr01() %></p>
                </div>
                   <div>
                    <label>給食数</label>
                    <p><%=formUser.getEat() %></p>
                </div>
                   <div>
                    <label>お問い合わせ項目</label>
                    <p><%=formUser.getItem() %></p>
                </div>
                <div>
                    <label>お問い合わせ内容</label>
                    <p><%=formUser.getContent() %></p>
                </div>
            </div>
        <input type="button" value="内容を修正する" onclick="history.back(-1)">
        <button type="submit" name="submit">送信する</button>

    </form>
</div>
</body>
</html>                   