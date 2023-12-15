package com.demo.servlet.user;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entities.Account;
import com.demo.entities.Accountdetails;
import com.demo.entities.Contact;
import com.demo.models.ContactModel;
@WebServlet("/contact")
/**
 * Servlet implementation class HomeServlet
 */
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactServlet() {
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
		request.setAttribute("activeContact", "active");
		request.setAttribute("p", "../user/contact.jsp");
		request.getRequestDispatcher("/WEB-INF/views/layout/user.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("contact")) {
			doPost_Contact(request, response);
		}
	}
	
	protected void doPost_Contact(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Account account = (Account) request.getSession().getAttribute("account");
		Accountdetails accountdetails = (Accountdetails) request.getSession().getAttribute("accountdetails");
		if(account != null) {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String subject = request.getParameter("subject");
			String description = request.getParameter("message");
			ContactModel contactModel = new ContactModel();
			Contact contact = new Contact();
			contact.setSubject(subject);
			contact.setDescription(description);
			contact.setName(name);
			contact.setPhone(accountdetails.getPhonenumber());
			contact.setEmail(email);
			contact.setStatus(false);
			contact.setCreated(new Date());
			if(contactModel.create(contact)) {
				request.getSession().setAttribute("success","Cảm ơn đã đóng góp ý kiến cho hệ thống.Kính chúc quý khách một ngày tốt lành");
				response.sendRedirect("contact#contact-form");
				System.out.println("Done");
			} else {
				request.getSession().setAttribute("failed","Bình luận không thành công");
				response.sendRedirect("contact#contact-form");
				System.out.println("false");
			}
		} else {
			request.getSession().setAttribute("failed","Bạn cần đăng nhập tài khoản để thực hiện chức năng này");
			response.sendRedirect("contact#contact-form");
		}
	}

}
