package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MailFormDAO;
import model.MailForm;

/**
 * Servlet implementation class FromAdSelect
 */
@WebServlet("/FormAdSelect")
public class FormAdSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "/WEB-INF/jsp/form_AdSlect.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		MailForm mailForm = new MailForm(name,email);	
		
		mailForm.setEmail(email);
		mailForm.setName(name);
		
		
		
	       HttpSession session = request.getSession();
	       session.setAttribute("MailForm",mailForm);
	       

	      
		// DB sql
		MailFormDAO mfd = new MailFormDAO();
		if(mfd.create(mailForm)) {
			System.out.println("insert ok !");
		} else {
			System.out.println("insert ng ...");
		}
		
		String url = "/WEB-INF/jsp/form_Check.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
