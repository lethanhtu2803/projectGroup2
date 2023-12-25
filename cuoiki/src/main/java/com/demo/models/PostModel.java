package com.demo.models;


import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import java.util.List;

import com.demo.entities.ConnectDB;
import com.demo.entities.Feedback;
import com.demo.entities.Post;

public class PostModel {
	public List<Post> findTopSix() {
		List<Post> posts = new ArrayList<Post>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("select * from post order by id desc limit 6");
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Post post = new Post();
				post.setId(resultSet.getInt("id"));
				post.setAccountid(resultSet.getInt("accountid"));
				post.setSubject(resultSet.getString("subject"));
				post.setDescription(resultSet.getString("description"));
				post.setPostdate(resultSet.getDate("postdate"));
				post.setBedroom(resultSet.getInt("bedroom"));
				post.setBathroom(resultSet.getInt("bathroom"));
				post.setPrice(resultSet.getDouble("price"));
				post.setDeposit(resultSet.getDouble("deposit"));
				post.setArea(resultSet.getDouble("area"));
				post.setAddress(resultSet.getString("address"));
				post.setAvatar(resultSet.getString("avatar"));
				post.setStatus(resultSet.getBoolean("status"));
				posts.add(post);
			}
		} catch (Exception e) {
			e.printStackTrace();
			posts = null;
			// TODO: handle exception
		} finally {
			ConnectDB.disconnect();
		}

		return posts;
	}

	public List<Post> findAll() {
		List<Post> posts = new ArrayList<Post>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("select * from post order by id desc");
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Post post = new Post();
				post.setId(resultSet.getInt("id"));
				post.setAccountid(resultSet.getInt("accountid"));
				post.setSubject(resultSet.getString("subject"));
				post.setDescription(resultSet.getString("description"));
				post.setPostdate(resultSet.getDate("postdate"));
				post.setBedroom(resultSet.getInt("bedroom"));
				post.setBathroom(resultSet.getInt("bathroom"));
				post.setPrice(resultSet.getDouble("price"));
				post.setDeposit(resultSet.getDouble("deposit"));
				post.setArea(resultSet.getDouble("area"));
				post.setAddress(resultSet.getString("address"));
				post.setAvatar(resultSet.getString("avatar"));
				post.setStatus(resultSet.getBoolean("status"));
				posts.add(post);
			}
		} catch (Exception e) {
			e.printStackTrace();
			posts = null;
			// TODO: handle exception
		} finally {
			ConnectDB.disconnect();
		}

		return posts;
	}

	public Post findPostByID(int id) {
		Post post = null;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("select * from post where id = ?");
			preparedStatement.setInt(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				post = new Post();
				post.setId(resultSet.getInt("id"));
				post.setAccountid(resultSet.getInt("accountid"));
				post.setSubject(resultSet.getString("subject"));
				post.setDescription(resultSet.getString("description"));
				post.setPostdate(resultSet.getDate("postdate"));
				post.setBedroom(resultSet.getInt("bedroom"));
				post.setBathroom(resultSet.getInt("bathroom"));
				post.setPrice(resultSet.getDouble("price"));
				post.setDeposit(resultSet.getDouble("deposit"));
				post.setArea(resultSet.getDouble("area"));
				post.setAddress(resultSet.getString("address"));
				post.setAvatar(resultSet.getString("avatar"));
				post.setStatus(resultSet.getBoolean("status"));

			}
		} catch (Exception e) {
			e.printStackTrace();
			post = null;
			// TODO: handle exception
		} finally {
			ConnectDB.disconnect();
		}

		return post;
	}

	public List<Post> findPostBySubject(String subject) {
		List<Post> posts = new ArrayList<Post>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("select * from post where subject like ?");
			preparedStatement.setString(1, "%" + subject + "%");
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Post post = new Post();
				post.setId(resultSet.getInt("id"));
				post.setAccountid(resultSet.getInt("accountid"));
				post.setSubject(resultSet.getString("subject"));
				post.setDescription(resultSet.getString("description"));
				post.setPostdate(resultSet.getDate("postdate"));
				post.setBedroom(resultSet.getInt("bedroom"));
				post.setBathroom(resultSet.getInt("bathroom"));
				post.setPrice(resultSet.getDouble("price"));
				post.setDeposit(resultSet.getDouble("deposit"));
				post.setArea(resultSet.getDouble("area"));
				post.setAddress(resultSet.getString("address"));
				post.setAvatar(resultSet.getString("avatar"));
				post.setStatus(resultSet.getBoolean("status"));
				posts.add(post);

			}
		} catch (Exception e) {
			e.printStackTrace();
			posts = null;
			// TODO: handle exception
		} finally {
			ConnectDB.disconnect();
		}

		return posts;
	}

	public List<Post> findPostByDistrict(String district) {
		List<Post> posts = new ArrayList<Post>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("Select * from post where address like ?");
			preparedStatement.setString(1, "%" + district + ",%");
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Post post = new Post();
				post.setId(resultSet.getInt("id"));
				post.setAccountid(resultSet.getInt("accountid"));
				post.setSubject(resultSet.getString("subject"));
				post.setPostdate(resultSet.getDate("postdate"));
				post.setBathroom(resultSet.getInt("bathroom"));
				post.setBedroom(resultSet.getInt("bedroom"));
				post.setPrice(resultSet.getDouble("price"));
				post.setDeposit(resultSet.getInt("deposit"));
				post.setArea(resultSet.getDouble("area"));
				post.setDescription(resultSet.getString("description"));
				post.setAddress(resultSet.getString("address"));
				post.setAvatar(resultSet.getString("avatar"));
				post.setStatus(resultSet.getBoolean("status"));

				posts.add(post);

			}
		} catch (Exception e) {
			// TODO: handle exception
			posts = null;
		} finally {
			ConnectDB.disconnect();
		}

		return posts;
	}

	public List<Post> findPostByPrice(double price) {
		List<Post> posts = new ArrayList<Post>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("Select * from post where price <= ?");
			preparedStatement.setDouble(1, price);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Post post = new Post();
				post.setId(resultSet.getInt("id"));
				post.setAccountid(resultSet.getInt("accountid"));
				post.setSubject(resultSet.getString("subject"));
				post.setPostdate(resultSet.getDate("postdate"));
				post.setBathroom(resultSet.getInt("bathroom"));
				post.setBedroom(resultSet.getInt("bedroom"));
				post.setPrice(resultSet.getDouble("price"));
				post.setDeposit(resultSet.getInt("deposit"));
				post.setArea(resultSet.getDouble("area"));
				post.setDescription(resultSet.getString("description"));
				post.setAddress(resultSet.getString("address"));
				post.setAvatar(resultSet.getString("avatar"));
				post.setStatus(resultSet.getBoolean("status"));

				posts.add(post);

			}
		} catch (Exception e) {
			// TODO: handle exception
			posts = null;
		} finally {
			ConnectDB.disconnect();
		}
		return posts;
	}

	public List<Post> findPostByPriceOver5(double price) {
		List<Post> posts = new ArrayList<Post>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("Select * from post where price >= ?");
			preparedStatement.setDouble(1, price);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Post post = new Post();
				post.setId(resultSet.getInt("id"));
				post.setAccountid(resultSet.getInt("accountid"));
				post.setSubject(resultSet.getString("subject"));
				post.setPostdate(resultSet.getDate("postdate"));
				post.setBathroom(resultSet.getInt("bathroom"));
				post.setBedroom(resultSet.getInt("bedroom"));
				post.setPrice(resultSet.getDouble("price"));
				post.setDeposit(resultSet.getInt("deposit"));
				post.setArea(resultSet.getDouble("area"));
				post.setDescription(resultSet.getString("description"));
				post.setAddress(resultSet.getString("address"));
				post.setAvatar(resultSet.getString("avatar"));
				post.setStatus(resultSet.getBoolean("status"));

				posts.add(post);

			}
		} catch (Exception e) {
			// TODO: handle exception
			posts = null;
		} finally {
			ConnectDB.disconnect();
		}

		return posts;
	}
	
	public List<Post> findPostByBedroom(int bedroom) {
		List<Post> posts = new ArrayList<Post>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("Select * from post where bedroom = ?");
			preparedStatement.setInt(1, bedroom);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Post post = new Post();
				post.setId(resultSet.getInt("id"));
				post.setAccountid(resultSet.getInt("accountid"));
				post.setSubject(resultSet.getString("subject"));
				post.setPostdate(resultSet.getDate("postdate"));
				post.setBathroom(resultSet.getInt("bathroom"));
				post.setBedroom(resultSet.getInt("bedroom"));
				post.setPrice(resultSet.getDouble("price"));
				post.setDeposit(resultSet.getInt("deposit"));
				post.setArea(resultSet.getDouble("area"));
				post.setDescription(resultSet.getString("description"));
				post.setAddress(resultSet.getString("address"));
				post.setAvatar(resultSet.getString("avatar"));
				post.setStatus(resultSet.getBoolean("status"));

				posts.add(post);

			}
		} catch (Exception e) {
			// TODO: handle exception
			posts = null;
		} finally {
			ConnectDB.disconnect();
		}

		return posts;
	}
	
	public List<Post> findPostByArea(double area) {
		List<Post> posts = new ArrayList<Post>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("Select * from post where area BETWEEN ? - 5 AND ? + 5 ");
			preparedStatement.setDouble(1, area);
			preparedStatement.setDouble(2, area);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Post post = new Post();
				post.setId(resultSet.getInt("id"));
				post.setAccountid(resultSet.getInt("accountid"));
				post.setSubject(resultSet.getString("subject"));
				post.setPostdate(resultSet.getDate("postdate"));
				post.setBathroom(resultSet.getInt("bathroom"));
				post.setBedroom(resultSet.getInt("bedroom"));
				post.setPrice(resultSet.getDouble("price"));
				post.setDeposit(resultSet.getInt("deposit"));
				post.setArea(resultSet.getDouble("area"));
				post.setDescription(resultSet.getString("description"));
				post.setAddress(resultSet.getString("address"));
				post.setAvatar(resultSet.getString("avatar"));
				post.setStatus(resultSet.getBoolean("status"));

				posts.add(post);

			}
		} catch (Exception e) {
			// TODO: handle exception
			posts = null;
		} finally {
			ConnectDB.disconnect();
		}

		return posts;
	}

	public boolean exists(int postID, List<Post> posts) {
		boolean status = false;
		for (int i = 0; i < posts.size(); i++) {
			if (posts.get(i).getId() == postID) {
				status = true;
			}
		}
		return status;
	}
	
	public boolean create(Post post) {
		boolean status = true;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
			.prepareStatement("insert into post(accountid,subject,postdate,bedroom,bathroom,price,deposit,area,description,address,avatar,status) values(?, ?, ?, ?,?, ?, ?, ?,?, ?, ?, ?)");
			preparedStatement.setInt(1, post.getAccountid());
			preparedStatement.setString(2, post.getSubject());
			preparedStatement.setDate(3, new Date(post.getPostdate().getTime()));
			preparedStatement.setInt(4, post.getBedroom());
			preparedStatement.setInt(5, post.getBathroom());
			preparedStatement.setDouble(6, post.getPrice());
			preparedStatement.setDouble(7, post.getDeposit());
			preparedStatement.setDouble(8, post.getArea());
			preparedStatement.setString(9, post.getDescription());
			preparedStatement.setString(10, post.getAddress());
			preparedStatement.setString(11, post.getAvatar());
			preparedStatement.setBoolean(12, post.isStatus());
			
			status = preparedStatement.executeUpdate() > 0;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			status = false;
			// TODO: handle exception
		} finally {
			ConnectDB.disconnect();
		}
		return status;
	}

	public static void main(String[] args) {
		PostModel postModel = new PostModel();
	//	System.out.println(postModel.create(new Post(2,"aa","2023-11-02",1,2,30.0,27,23."aa","aa","aa",false)));
	}
}
