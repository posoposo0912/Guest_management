<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>入力フォーム</title>
<link rel="stylesheet" href="./style.css">
<script type="text/javascript" src="js/contact.js"></script>
<script src="js/ajaxzip3.js" charset="UTF-8"></script>
</head>
<body>
<div><h1>イートンちどり保育園</h1></div>
<div><h2>入力フォーム</h2></div>
<div>
	<form action="confirm.php" method="post" name="form" onsubmit="return validate()">
		<p class="contact-title">※下記フォームより必要事項をご記入の上、お申し込みください。</p>

		<div class="form-box-1">
			<p>
				お申し込み完了後、 <font color="#ea9999">自動返信メール</font>
				にてメールが届きます。メール送信完了画面をご確認の上、万が一返信がない場合は、 <font color="#ea9999">mail@test.com&nbsp;</font>
				まで、ご連絡ください。その際、お手数ですが、上記メールアドレスを受信できる様、ご登録をお願い致します。携帯メールアドレスをご利用のお客様で、ドメイン指定受信をご利用の場合は、ドメイン指定受信を解除していただくか、
				<font color="#ea9999">@test.com</font>
				ドメインからのメールが受信できるよう設定をお願い致します。メールでのご連絡が無理な場合は、お電話にてご連絡させていただきます。
			</p>
		</div>

		<p>入力内容をご入力の上、「確認画面へ」ボタンをクリックしてください。</p>
		<div>

            <div>
				<label>団体名<span>必須</span></label>
				<input type="text" name="furigana" placeholder="例）○○株式会社" value="">
			</div>

            <div>
				<label>お名前<span>必須</span></label>
				<input type="text" name="name" placeholder="例）山田太郎" value="">
			</div>
			<div>
				<label>ふりがな<span>必須</span></label>
				<input type="text" name="furigana" placeholder="例）やまだたろう" value="">
			</div>

			<div id="eat">
				<label>来園人数<span>必須</span></label>
				<input type="number" name="eat" value="0" min="0" max="50"style="position: relative; left: 5px; top: 3px;">
				<span class="eat2">人</span>
				<!--
				※※※とりあえず※※※
				<input type="radio" name="sex" value="男性" checked> 男性
				<input type="radio" name="sex" value="女性"> 女性
				-->
			</div>

			<div>
				<label>来園日<span>必須</span></label>
				<input type="date" name="tel" placeholder="" value="">
			</div>

			<div>
				<label>入園時間<span>必須</span></label>
				<input type="time" name="tel" placeholder="" value="">
			</div>

			<div>
				<label>退園時間<span>必須</span></label>
				<input type="time" name="tel" placeholder="" value="">
			</div>

			<div>
				<label>メールアドレス<span>必須</span></label>
				<input type="text" name="email" placeholder="例）guest@example.com" value="">
			</div>

			<div>
				<label>電話番号<span>必須</span></label>
				<input type="tel" name="tel" placeholder="例）12345678900" value="">
			</div>

			<div>
				<label>生年月日<span>必須</span></label>
				<input type="date" name="tel" placeholder="" value="">
			</div>

			<div>
				<label>郵便番号<span>必須</span></label>
				<input type="text" name="zip01" size="10" maxlength="8" onKeyUp="AjaxZip3.zip2addr(this,'','pref01','addr01');">

			</div>

			<div>
				<label>都道府県<span>必須</span></label>
				<input type="text" name="pref01" size="20">

			</div>

			<div>
				<label>以降の住所<span>必須</span></label>
				<input type="text" name="addr01" size="60">
			</div>

			<div id="eat">
				<label>給食数<span>必須</span></label>
				<input type="number" name="eat" value="0" min="0" max="50"style="position: relative; left: 5px; top: 3px;">
				<span class="eat2">人分</span>
				<!--
				※※※とりあえず※※※
				<input type="radio" name="sex" value="男性" checked> 男性
				<input type="radio" name="sex" value="女性"> 女性
				-->
			</div>

			<div>
				<label>お問い合わせ項目<span>必須</span></label>
				<select name="item">
					<option value="">お問い合わせ項目を選択してください</option>
					<option value="ご意見・ご要望">ご意見・ご要望</option>
					<option value="その他">その他</option>
				</select>
			</div>
			<div>
				<label>お問い合わせ内容<span>必須</span></label>
				<textarea name="content" rows="5" placeholder="お問合せ内容を入力"></textarea>
			</div>
		</div>
		<button type="submit">確認画面へ</button>
	</form>
</div>
</body>
</html>