package model;

import java.io.Serializable;

public class Form implements Serializable{
	public String coname;   //団体名
	public String name;     //お名前
	public String kana;     //ふりがな
	public String day;      //来園人数
	public String comeday;  //来園日
	public String cometime; //入園時間
	public String byetime;  //退園時間
	public String email;    //メアド
	public String tel;      //電話番号
	public String bday;     //生年月日
	public String zip01;    //郵便番号
	public String pref01;   //都道府県
	public String addr01;   //以降の住所
	public String eat;      //給食数
	public String item;     //お問い合わせ項目
	public String content;  //お問い合わせ内容

	public Form() {}

	public Form(String coname,String name,String kana,String day,String comeday,String cometime,String byetime,
			String email,String tel,String bday, String zip01,String pref01,String addr01,String eat,String item,String content) {
		this.coname = coname;     //団体名
		this.name = name;         //お名前
		this.kana = kana;         //ふりがな
		this.day = day;           //来園人数
		this.comeday = comeday;   //来園日
		this.cometime = cometime; //入園時間
		this.byetime = byetime;   //退園時間
		this.email = email;       //メアド
		this.tel = tel;           //電話番号
		this.bday = bday;         //生年月日
		this.zip01 = zip01;       //郵便番号
		this.pref01 = pref01;     //都道府県
		this.addr01 = addr01;     //以降の住所
		this.eat = eat;           //給食数
		this.item = item;         //お問い合わせ項目
		this.content = content;   //お問い合わせ内容
	}
	public String getConame(){return coname;}       //団体名
	public String getName(){return name;}           //お名前
	public String getKana(){return kana;}           //ふりがな
	public String getDay(){return day;}             //来園人数
	public String getComeday(){return comeday;}     //来園日
	public String getCometime(){return cometime;}   //入園時間
	public String getByetime(){return byetime;}     //退園時間
	public String getEmail(){return email;}         //メアド
	public String getTel(){return tel;}             //電話番号
	public String getBday(){return bday;}           //生年月日
	public String getZip01(){return zip01;}         //郵便番号
	public String getPref01(){return pref01;}       //都道府県
	public String getAddr01(){return addr01;}       //以降の住所
	public String getEat(){return eat;}             //給食数
	public String getItem(){return item;}           //お問い合わせ項目
	public String getContent(){return content;}     //お問い合わせ内容

}
