package com.demo.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.mindrot.jbcrypt.BCrypt;

import com.demo.entities.Account;
import com.demo.entities.Accountdetails;
import com.demo.helpers.UploadFileHelper;
import com.demo.models.AccountDetailsModel;
import com.demo.models.AccountModel;
@WebServlet("/account")
@MultipartConfig(
        maxFileSize = 1024 * 1024 * 5,
        maxRequestSize = 1024 * 1024 * 10,
        fileSizeThreshold = 1024 * 1024 * 10
)
/**
 * Servlet implementation class AccountServlet
 */
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null) {
			doGet_Index(request, response);
		}
		
	}
	protected void doGet_Index(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Account account = (Account) request.getSession().getAttribute("account");
		if(account == null) {
			request.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(request, response);
		} else {
			request.setAttribute("p", "../user/account.jsp");
			request.getRequestDispatcher("/WEB-INF/views/layout/user.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if(action == null) {
			doPost_UpdateAccount(request, response);
		}
	}
	
	protected void doPost_UpdateAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Part file = request.getPart("file");
		Account account = (Account) request.getSession().getAttribute("account");
		AccountDetailsModel accountDetailsModel = new AccountDetailsModel();
		AccountModel accountModel = new AccountModel();
		Accountdetails accountdetails = new Accountdetails();
		String fullName = request.getParameter("fullName");
		String newPass = request.getParameter("newPass");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		Date birthday = new Date(request.getParameter("birthday"));
		String avatar = UploadFileHelper.uploadFile("assets/user/images/150canho",request,file);
		accountdetails.setAccountid(account.getId());
		accountdetails.setAddress(new String(address.getBytes("ISO-8859-1"), "UTF-8"));
		accountdetails.setBirthday(birthday);
		accountdetails.setName(new String(fullName.getBytes("ISO-8859-1"), "UTF-8"));
		accountdetails.setPhonenumber(phoneNumber);
		accountdetails.setUpdatedate(new Date());
		accountdetails.setAvatar(avatar);
		System.out.println(fullName);
		System.out.println(newPass);
		System.out.println(address);
		System.out.println(email);
		System.out.println(phoneNumber);
		System.out.println(birthday);
		System.out.println(avatar);
		account.setPassword(BCrypt.hashpw(newPass, BCrypt.gensalt()));
		account.setEmail(email);
		if(accountDetailsModel.findAccountByAccountID(account.getId()) == null) {
			if(accountDetailsModel.create(accountdetails) && accountModel.update(account)) {
				System.out.println("Thành công");
				response.sendRedirect("account");
			} else {
				System.out.println("Thất bại");
				response.sendRedirect("account");
			}
		} else {
			if(accountDetailsModel.update(accountdetails) && accountModel.update(account)) {
				System.out.println("Cập nhật thành công");
				response.sendRedirect("account");
			} else {
				System.out.println("Cập nhật thất bại");
				response.sendRedirect("account");
			}
		}
		
	}

}
