package com.demo.servlet.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entities.Account;
import com.demo.entities.Post;
import com.demo.models.AccountModel;
import com.demo.models.PostImageModel;
import com.demo.models.PostModel;
import com.google.gson.Gson;
@WebServlet("/userapartment")
/**
 * Servlet implementation class HomeServlet
 */
public class UserApartmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserApartmentServlet() {
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
		} else if(action.equalsIgnoreCase("searchByKeyword")) {
			doGet_SearchByName(request, response);
		} else if(action.equalsIgnoreCase("searchByDistrict")) {
			doGet_SearchByDistrict(request, response);
		} else if(action.equalsIgnoreCase("searchByPrice")) {
			doGet_SearchByPrice(request, response);
		} else if(action.equalsIgnoreCase("searchByPriceOver5")) {
			doGet_SearchByPriceOver5(request, response);
		} else if(action.equalsIgnoreCase("searchByBedroom")) {
			doGet_SearchByBedroom(request, response);
		} else if(action.equalsIgnoreCase("searchByArea")) {
			doGet_SearchByArea(request, response);
		} else if(action.equalsIgnoreCase("deletePost")) {
			doGet_DeletePost(request, response);
		}
	}
	protected void doGet_Index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PostModel postModel = new PostModel();
		request.setAttribute("posts", postModel.findAll());
		request.setAttribute("activeUser", "active");
		request.setAttribute("p", "../user/userapartment.jsp");
	
		request.getRequestDispatcher("/WEB-INF/views/layout/user.jsp").forward(request, response);
	}
	protected void doGet_DeletePost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PostModel postModel = new PostModel();
		PostImageModel postImageModel = new PostImageModel();
		
		int id = Integer.parseInt(request.getParameter("id"));
		if(postImageModel.delete(id)) {
			if(postModel.delete(id)) {
				response.sendRedirect(request.getContextPath() + "/mypost");
			} else {
				response.sendRedirect(request.getContextPath() + "/mypost");
			}
		}
	}
	protected void doGet_SearchByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		String keyword = request.getParameter("keyword");
		PostModel postModel = new PostModel();
		Gson gson = new Gson();
		writer.print(gson.toJson(postModel.findPostBySubject(keyword)));
		
	}
	
	protected void doGet_SearchByDistrict(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		String district = request.getParameter("district");
		PostModel postModel = new PostModel();
		Gson gson = new Gson();
		writer.print(gson.toJson(postModel.findPostByDistrict(district)));
		

	}
	
	protected void doGet_SearchByPrice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		double price = Double.parseDouble(request.getParameter("price"));
		PostModel postModel = new PostModel();
		Gson gson = new Gson();
		writer.print(gson.toJson(postModel.findPostByPrice(price)));
		

	}
	
	protected void doGet_SearchByPriceOver5(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		double price = Double.parseDouble(request.getParameter("price"));
		PostModel postModel = new PostModel();
		Gson gson = new Gson();
		writer.print(gson.toJson(postModel.findPostByPriceOver5(price)));
		

	}
	
	protected void doGet_SearchByBedroom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		int bedroom = Integer.parseInt(request.getParameter("bedroom"));
		PostModel postModel = new PostModel();
		Gson gson = new Gson();
		writer.print(gson.toJson(postModel.findPostByBedroom(bedroom)));
		

	}
	
	protected void doGet_SearchByArea(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		double area = Double.parseDouble(request.getParameter("area"));
		PostModel postModel = new PostModel();
		Gson gson = new Gson();
		writer.print(gson.toJson(postModel.findPostByArea(area)));
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
