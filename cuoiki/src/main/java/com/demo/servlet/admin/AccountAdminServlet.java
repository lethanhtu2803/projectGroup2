package com.demo.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entities.Account;
import com.demo.models.AccountModel;
import com.demo.models.AccountPartialModel;
import com.demo.models.SystemApartmentModel;
import com.google.gson.Gson;
@WebServlet({"/admin/account"})
/**
 * Servlet implementation class AccountAdminServlet
 */
public class AccountAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountAdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action == null) {
			doGet_Index(request, response);
		} else if(action.equalsIgnoreCase("searchByName")) {
			doGet_SearchByName(request, response);
		} else if(action.equalsIgnoreCase("searchByPhone")) {
			doGet_SearchByPhone(request, response);
		} else if(action.equalsIgnoreCase("searchByVerify")) {
			doGet_SearchByVerify(request, response);
		} else if(action.equalsIgnoreCase("blockUser")) {
			doGet_BlockUser(request, response);
		} else if(action.equalsIgnoreCase("unblockUser")) {
			doGet_UnblockUser(request, response);
		}
	}
	protected void doGet_Index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("admin", "../admin/accounts.jsp");
		request.setAttribute("activeAccount", "active");
		AccountPartialModel accountPartialModel = new AccountPartialModel();
		request.setAttribute("accounts", accountPartialModel.findAll());
		request.getRequestDispatcher("/WEB-INF/views/layout/admin.jsp").forward(request, response);
	}
	
	protected void doGet_SearchByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		String name = request.getParameter("name");
		AccountPartialModel accountPartialModel = new AccountPartialModel();
		Gson gson = new Gson();
		writer.print(gson.toJson(accountPartialModel.searchByName(name)));
	}
	
	protected void doGet_SearchByVerify(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		int status = Integer.parseInt(request.getParameter("value"));
		Gson gson = new Gson();
		AccountPartialModel accountPartialModel = new AccountPartialModel();
		if(status == 0) {
			writer.print(gson.toJson(accountPartialModel.findAll()));
		} else if(status == 1) {
			writer.print(gson.toJson(accountPartialModel.checkVerify(true)));
		} else if(status == 2) {
			writer.print(gson.toJson(accountPartialModel.checkVerify(false)));
		} else {
			writer.print(gson.toJson(accountPartialModel.checkStatus(false)));
		}
	}
	
	protected void doGet_SearchByPhone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		String phone = request.getParameter("phone");
		AccountPartialModel accountPartialModel = new AccountPartialModel();
		Gson gson = new Gson();
		writer.print(gson.toJson(accountPartialModel.searchByPhone(phone)));
	}
	
	protected void doGet_BlockUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountModel accountModel = new AccountModel();
		int id = Integer.parseInt(request.getParameter("id"));
		Account account = accountModel.findAccountByAccountID(id);
		account.setStatus(false);
		if(accountModel.update(account)) {
			request.getSession().setAttribute("msg", "Đã chặn thành công");
			response.sendRedirect(request.getContextPath() + "/admin/account");
			
		} else {
			System.out.println(1);
			response.sendRedirect(request.getContextPath() + "/admin/account");
		}
	}
	
	protected void doGet_UnblockUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountModel accountModel = new AccountModel();
		int id = Integer.parseInt(request.getParameter("id"));
		Account account = accountModel.findAccountByAccountID(id);
		account.setStatus(true);
		if(accountModel.update(account)) {
			request.getSession().setAttribute("msg2", "Đã gỡ chặn thành công");
			response.sendRedirect(request.getContextPath() + "/admin/account");
			
		} else {
			System.out.println(1);
			response.sendRedirect(request.getContextPath() + "/admin/account");
		}
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
