package com.demo.servlet.user;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entities.Contact;
import com.demo.models.ContactModel;
import com.demo.models.SystemApartmentImageModel;
import com.demo.models.SystemApartmentModel;
import com.mysql.cj.Session;
@WebServlet("/systemapartmentdetails")
/**
 * Servlet implementation class HomeServlet
 */
public class SystemApartmentDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SystemApartmentDetailsServlet() {
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
		request.setAttribute("p", "../user/systemapartmentdetails.jsp");
		
		int	id = Integer.parseInt(request.getParameter("id"));
		
		
		SystemApartmentModel systemApartmentModel = new SystemApartmentModel();
		SystemApartmentImageModel systemApartmentImageModel = new SystemApartmentImageModel();
		request.setAttribute("images", systemApartmentImageModel.findSystemapartmentImageBySystemApartmentID(systemApartmentModel.findSystemApartmentByID(id).getId()));
		request.setAttribute("systemapartment", systemApartmentModel.findSystemApartmentByID(id));
		request.getRequestDispatcher("/WEB-INF/views/layout/user.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("contact")) {
			doPost_Contact(request, response);
		}
	}
	protected void doPost_Contact(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String subject = request.getParameter("subject");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String description = request.getParameter("description");
		int id = Integer.parseInt(request.getParameter("id"));
		SystemApartmentModel systemApartmentModel = new SystemApartmentModel();
		ContactModel contactModel = new ContactModel();
		Contact contact = new Contact();
		contact.setCreated(new Date());
		contact.setDescription(description);
		contact.setEmail(email);
		contact.setPhone(phone);
		contact.setName(name);
		contact.setSubject("Liên hệ về căn hộ: " + systemApartmentModel.findSystemApartmentByID(id).getSubject());
		contact.setStatus(false);
		if(contactModel.create(contact)) {
			request.getSession().setAttribute("msg", "Gửi thành công! Hệ thống sẽ liên hệ với bạn trong thời gian sớm nhất");
			doGet_Index(request, response);
		} else {
			doGet_Index(request, response);
		}
	
		
	}

}
