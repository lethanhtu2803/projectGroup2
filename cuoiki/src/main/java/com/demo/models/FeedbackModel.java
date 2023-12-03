package com.demo.models;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.demo.entities.Account;
import com.demo.entities.ConnectDB;
import com.demo.entities.Feedback;

public class FeedbackModel {
	public List<Feedback> findAll(){
		List<Feedback> feedbacks = new ArrayList<Feedback>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection().prepareStatement("select * from feedback");
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Feedback feedback = new Feedback();
				feedback.setId(resultSet.getInt("id"));
				feedback.setAccountid(resultSet.getInt("accountid"));
				feedback.setSubject(resultSet.getString("subject"));
				feedback.setDescription(resultSet.getString("description"));
				feedback.setCreated(resultSet.getDate("created"));
				feedbacks.add(feedback);
			}
		} catch (Exception e) {
			e.printStackTrace();
			feedbacks = null;
			// TODO: handle exception
		} finally {
			ConnectDB.disconnect();
		}
		
		return feedbacks;
	}
	public boolean submitFeedback(Feedback feedback) {
		boolean status = true;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
			.prepareStatement("insert into feedback(accountid,subject,description,created) values(?, ?, ?, ?)");
			preparedStatement.setInt(1, feedback.getAccountid());
			preparedStatement.setString(2, feedback.getSubject());
			preparedStatement.setString(3, feedback.getDescription());
			preparedStatement.setDate(4, new Date(feedback.getCreated().getTime()));
		
			
			
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
		FeedbackModel feedbackModel = new FeedbackModel();
		System.out.println(feedbackModel.findAll());
	}
}
