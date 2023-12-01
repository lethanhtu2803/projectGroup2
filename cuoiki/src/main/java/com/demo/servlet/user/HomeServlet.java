package com.demo.servlet.user;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entities.Account;
import com.demo.entities.Feedback;
import com.demo.models.FeedBackModel;
import com.demo.models.PostModel;
@WebServlet("/home")
/**
 * Servlet implementation class HomeServlet
 */
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
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
		}
	}
	protected void doGet_Index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("activeHome", "active");
		request.setAttribute("p", "../user/home.jsp");
		request.getRequestDispatcher("/WEB-INF/views/layout/user.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("submitFeedback")) {
			doPost_SubmitFeedback(request, response);
		}
	}
	protected void doPost_SubmitFeedback(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Account account = (Account) request.getSession().getAttribute("account");
		FeedBackModel feedBackModel = new FeedBackModel();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		Feedback feedback = new Feedback();
		feedback.setAccount(account);
		feedback.setCreated(new Date());
		feedback.setDescription(message);
		feedback.setSubject(subject);
		if(account != null ) {
			if(feedBackModel.submitFeedback(feedback)) {
				request.getSession().setAttribute("success","Cảm ơn đã đóng góp ý kiến cho hệ thống.Kính chúc quý khách một ngày tốt lành");
				response.sendRedirect("home");
			} else {
				request.getSession().setAttribute("failed","Bình luận không thành công");
			}
		} else {
			request.getSession().setAttribute("failed","Bạn cần đăng nhập tài khoản để thực hiện chức năng này");
			response.sendRedirect("home");
		}
	}

}
