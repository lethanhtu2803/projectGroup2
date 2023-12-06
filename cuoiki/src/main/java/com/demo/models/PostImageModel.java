package com.demo.models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.demo.entities.Account;
import com.demo.entities.ConnectDB;
import com.demo.entities.PostImage;

public class PostImageModel {
	public List<PostImage> findPostImageByPostID(int postID){
		List<PostImage> images = new ArrayList<PostImage>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection().prepareStatement("select * from postimage where postid = ?");
			preparedStatement.setInt(1, postID);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				PostImage image = new PostImage();
				image.setId(resultSet.getInt("id"));
				image.setName(resultSet.getString("name"));
				image.setCreated(resultSet.getDate("created"));
				image.setPostid(resultSet.getInt("postid"));
				images.add(image);
			}
		} catch (Exception e) {
			e.printStackTrace();
			images = null;
			// TODO: handle exception
		} finally {
			ConnectDB.disconnect();
		}
		
		return images;
	}
	public static void main(String[] args) {
		PostImageModel imageModel = new PostImageModel();
		System.out.println(imageModel.findPostImageByPostID(1));
	}
}	
