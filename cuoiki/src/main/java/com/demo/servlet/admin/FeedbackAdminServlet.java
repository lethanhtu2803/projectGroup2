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
import com.demo.models.FeedbackModel;
import com.google.gson.Gson;
@WebServlet({"/admin/feedback"})
/**
 * Servlet implementation class AccountAdminServlet
 */
public class FeedbackAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackAdminServlet() {
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
		} else if(action.equalsIgnoreCase("reloadFeedback")) {
			doGet_ReloadFeedback(request, response);
		}
	}
	protected void doGet_Index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("admin", "../admin/feedbacks.jsp");
		request.setAttribute("activeFeedback", "active");
		FeedbackModel feedBackModel = new FeedbackModel();
		request.setAttribute("feedbacks", feedBackModel.findAll());
		AccountModel accountModel = new AccountModel();
		request.getSession().removeAttribute("feedbacks");
		request.getSession().setAttribute("feedbacks", feedBackModel.findAll().size());
		request.getRequestDispatcher("/WEB-INF/views/layout/admin.jsp").forward(request, response);
	}
	protected void doGet_ReloadFeedback(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter printWriter = response.getWriter();
		Gson gson = new Gson();
		FeedbackModel feedbackModel = new FeedbackModel();
		printWriter.print(gson.toJson(feedbackModel.findAll()));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
}
