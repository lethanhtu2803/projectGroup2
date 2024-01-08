package com.demo.servlet.user;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.demo.entities.Account;
import com.demo.entities.Accountdetails;
import com.demo.entities.Post;
import com.demo.entities.PostImage;
import com.demo.helpers.UploadFileHelper;
import com.demo.models.PostImageModel;
import com.demo.models.PostModel;
@WebServlet("/postapartment")
@MultipartConfig(
        maxFileSize = 1024 * 1024 * 5,
        maxRequestSize = 1024 * 1024 * 10,
        fileSizeThreshold = 1024 * 1024 * 10
)
/**
 * Servlet implementation class HomeServlet
 */
public class PostApartmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostApartmentServlet() {
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
		Account account = (Account) request.getSession().getAttribute("account");
		Accountdetails accountdetails = (Accountdetails) request.getSession().getAttribute("accountdetails");
		if(account == null) {
			request.getSession().setAttribute("msg", "Bạn chưa đăng nhập tài khoản để thực hiện đăng tin");
			response.sendRedirect("login");
		} else if(accountdetails == null) {
			request.getSession().setAttribute("msg", "Bạn cần cập nhật tài khoản để thực hiện đăng tin");
			response.sendRedirect("account");
		} else {
			request.setAttribute("p", "../user/postapartment.jsp");
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
			doPost_PostUserApart(request, response);
		}
	}
	
	protected void doPost_PostUserApart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PostModel postModel = new PostModel();
		PostImageModel postImageModel = new PostImageModel();
		List<Part> parts = (List<Part>) request.getParts();
		Account account = (Account) request.getSession().getAttribute("account");
		String subject = request.getParameter("subject");
		double price = Double.parseDouble(request.getParameter("price"));
		double deposit = Double.parseDouble(request.getParameter("deposit"));
		double area = Double.parseDouble(request.getParameter("area"));
		int bedroom = Integer.parseInt(request.getParameter("bedroom"));
		int bathroom = Integer.parseInt(request.getParameter("bathroom"));
		String address = request.getParameter("address");
		String description = request.getParameter("description");
		String avatar = UploadFileHelper.uploadFile("assets/user/images/150canho", request, parts.get(8));
		System.out.println(avatar);
		Post post = new Post();
			post.setSubject(new String(new String(subject.getBytes("ISO-8859-1"), "UTF-8")));
			post.setArea(area);
			post.setPrice(price);
			post.setDeposit(deposit);
			post.setDescription(new String(new String(description.getBytes("ISO-8859-1"), "UTF-8")));
			post.setAccountid(account.getId());
			post.setBedroom(bedroom);
			post.setBathroom(bathroom);
			post.setAddress(new String(new String(address.getBytes("ISO-8859-1"), "UTF-8")));
			post.setAvatar(avatar);
			post.setPostdate(new Date());
			post.setStatus(false);
			if(postModel.create(post)) {
				for(int i = 9;i < parts.size();i++) {
					PostImage postImage = new PostImage();
					postImage.setName(UploadFileHelper.uploadFile("assets/user/images/150canho", request, parts.get(i)));
					postImage.setCreated(new Date());
					postImage.setPostid(postModel.lastPost().getId());
					if(postImageModel.create(postImage)) {
						System.out.println("Them anh thanh cong");
					} else {
						System.out.println("Them anh khong thanh cong");
					}
				}
				request.getSession().setAttribute("msg", "thêm bài đăng thành công");
				response.sendRedirect("mypost");
			} else {
				request.getSession().setAttribute("msg", "thêm bài đăng không thành công");
				response.sendRedirect("postapartment");
			}
		} 
		
	}


