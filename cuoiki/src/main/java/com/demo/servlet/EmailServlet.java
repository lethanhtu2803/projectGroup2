package com.demo.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entities.Account;
import com.demo.helpers.MailHelper;
import com.demo.helpers.RandomStringHelper;
import com.demo.models.AccountModel;

/**
 * Servlet implementation class EmailServlet
 */
@WebServlet("/email")
public class EmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if(action == null) {
			doGet_Index(request, response);
		}
	}
	
	protected void doGet_Index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/login/email.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("email")) {
			doPost_Email(request, response);
		}
	}
	
	protected void doPost_Email(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		AccountModel accountModel = new AccountModel();
		String email = request.getParameter("email");
		String OTP = RandomStringHelper.generateRandomString(6);
		request.getSession().setAttribute("otp", OTP);
		if(accountModel.findAccountByEmail(email) != null) {
			request.getSession().setAttribute("accountEmail", accountModel.findAccountByEmail(email));
			String content = "Xin chào, đây là email từ $Apartment! Hệ thống xin gửi bạn đoạn mã OTP "+ OTP + " để thay đổi mật khẩu.";
			MailHelper.MailHelper(((Account) request.getSession().getAttribute("accountEmail")).getEmail(), "Xác nhận mã OTP", content);
			response.sendRedirect("otp");
		} else {
			request.getSession().setAttribute("msgEmail", "Email không tồn tại. Vui lòng kiểm tra lại");
			response.sendRedirect("email");
		}
	}

}
