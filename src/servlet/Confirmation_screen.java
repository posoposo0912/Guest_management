package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Form;

@WebServlet("/Confirmation_screen")
public class Confirmation_screen extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public Confirmation_screen() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/input.jsp");
		     rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("UTF-8");
		    response.setContentType("text/html; charset=UTF-8");

		String Coname = request.getParameter("coname");     //団体名
		String Name = request.getParameter("name");         //お名前
		String Kana = request.getParameter("kana");         //ふりがな
		String Day = request.getParameter("day");           //来園人数
		String Comeday = request.getParameter("comeday");   //来園日
		String Cometime = request.getParameter("cometime"); //入園時間
		String Byetime = request.getParameter("byetime");   //退園時間
		String Email = request.getParameter("email");       //メアド
		String Tel = request.getParameter("tel");           //電話番号
		String Bday = request.getParameter("bday");         //生年月日
		String Zip01 = request.getParameter("zip01");       //郵便番号
		String Pref01 = request.getParameter("pref01");     //都道府県
		String Addr01 = request.getParameter("addr01");     //以降の住所
		String Eat = request.getParameter("eat");           //給食数
		String Item = request.getParameter("item");         //お問い合わせ項目
		String Content = request.getParameter("content");   //お問い合わせ内容


		//MailForm mailForm = MailForm(email,name);
		Form formUser = new Form(Coname,Name,Kana,Day,Comeday,Cometime,Byetime,Email,Tel,Bday,Zip01,Pref01,Addr01,Eat,Item,Content);


		HttpSession session = request.getSession();
		session.setAttribute("Form",formUser);




		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/confirmation_screen.jsp");
		dispatcher.forward(request,response);

	}

}

