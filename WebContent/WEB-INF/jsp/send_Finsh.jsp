<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>入力フォーム</title>

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

 <div>
		<h1>イートンちどり保育園</h1>
 </div>
 
 <div>
		<h2>フォーム送信完了</h2>
 </div>
	
    <div>
    <form action="/Guest/" method="post" name="form" onsubmit="return validate()">
          <div>
 			<div>
               <div>
                  <p style =  " font-size: 40px;"  align="center"> 送信が完了しました</p>
               </div>
            </div>                
          </div>  
                  
         <button type="submit">閉じる</button>
         </form>
    </div>

</body>
</html>