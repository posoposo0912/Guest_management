package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MailFormDAO;
import model.MailForm;

/**
 * Servlet implementation class FromAdSelect
 */
@WebServlet("/form_AdSelect.html")
public class FormAdSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/form_AdSelect.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// FIXME mail�t�H�[�}�b�g�̃N���X���g��
		String email = request.getParameter("email");
		MailForm mailForm = new MailForm();
		mailForm.setEmail(email);
		
		// DB sql ������
		MailFormDAO mfd = new MailFormDAO();
		if(mfd.create(mailForm)) {
			System.out.println("insert ok !");
		} else {
			System.out.println("insert ng ...");
		}
		
		String url = "/form_Check.html";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
