package com.demo.models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.demo.entities.ConnectDB;
import com.demo.entities.Feedback;
import com.demo.entities.Post;

public class PostModel {
	public List<Post> findTopSix(){
		List<Post> posts = new ArrayList<Post>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection().prepareStatement("select * from post order by id desc limit 6");
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
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
				post.setArea(resultSet.getString("area"));
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
	public List<Post> findAll(){
		List<Post> posts = new ArrayList<Post>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection().prepareStatement("select * from post order by id desc");
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
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
				post.setArea(resultSet.getString("area"));
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
	public Post findPostByID(int id){
		Post post = null;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection().prepareStatement("select * from post where id = ?");
			preparedStatement.setInt(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
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
				post.setArea(resultSet.getString("area"));
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
	public boolean exists(int postID, List<Post> posts) {
		boolean status = false;
		for(int i = 0; i < posts.size(); i++) {
			if(posts.get(i).getId() == postID) {
				status = true;
			}
		}
		return status;
	}
	public static void main(String[] args) {
		PostModel postModel = new PostModel();
		System.out.println(postModel.findPostByID(1));
	}
}
