package com.demo.servlet.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entities.Post;
import com.demo.models.PostModel;
@WebServlet("/wishlist")
/**
 * Servlet implementation class HomeServlet
 */
public class WishlistApartmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WishlistApartmentServlet() {
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
		} else if(action.equalsIgnoreCase("wishlist")) {
			doGet_Wishlist(request, response);
		} else if(action.equalsIgnoreCase("remove")) {
			doGet_Remove(request, response);
		}
	}
	protected void doGet_Index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("p", "../user/wishlist.jsp");
		request.getRequestDispatcher("/WEB-INF/views/layout/user.jsp").forward(request, response);
	}
	protected void doGet_Remove(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		List<Post> posts = (List<Post>) request.getSession().getAttribute("posts");
		posts.remove(id);
		request.getSession().setAttribute("posts", posts);
		response.sendRedirect("wishlist");
	}
	protected void doGet_Wishlist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		PostModel postModel = new PostModel();
		Post post = postModel.findPostByID(id);
		if(request.getSession().getAttribute("posts") == null) {
			List<Post> posts = new ArrayList<Post>();
			posts.add(post);
			request.getSession().setAttribute("posts", posts);
		} else {
			List<Post> posts = (List<Post>) request.getSession().getAttribute("posts");
			if(postModel.exists(id, posts) == false) {
				posts.add(post);
				request.getSession().setAttribute("posts", posts);
			} else {
				request.getSession().setAttribute("posts", posts);
			}
		
			
		}
		
		response.sendRedirect("wishlist");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
