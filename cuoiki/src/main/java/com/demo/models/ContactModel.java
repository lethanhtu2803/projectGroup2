package com.demo.models;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.demo.entities.Account;
import com.demo.entities.ConnectDB;
import com.demo.entities.Contact;

public class ContactModel {
	public List<Contact> findAll(){
		List<Contact> contacts = new ArrayList<Contact>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection().prepareStatement("select * from contact");
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Contact contact = new Contact();
				contact.setId(resultSet.getInt("id"));
				contact.setName(resultSet.getString("name"));
				contact.setPhone(resultSet.getString("phone"));
				contact.setEmail(resultSet.getString("email"));
				contact.setDescription(resultSet.getString("description"));
				contact.setSubject(resultSet.getString("subject"));
				contact.setStatus(resultSet.getBoolean("status"));
				contact.setCreated(resultSet.getDate("created"));
				contacts.add(contact);
			}
		} catch (Exception e) {
			e.printStackTrace();
			contacts = null;
			// TODO: handle exception
		} finally {
			ConnectDB.disconnect();
		}
		
		return contacts;
	}
	public boolean create(Contact contact) {
		boolean status = true;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
			.prepareStatement("insert into contact(subject,description,name,phone,email,created,status) values(?, ?, ?, ?, ?, ?, ?)");
			preparedStatement.setString(1, contact.getSubject());
			preparedStatement.setString(2, contact.getDescription());
			preparedStatement.setString(3, contact.getName());
			
			preparedStatement.setString(4, contact.getPhone());
			preparedStatement.setString(5, contact.getEmail());
			preparedStatement.setDate(6, new Date(contact.getCreated().getTime()));
			preparedStatement.setBoolean(7, contact.isStatus());
			
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
		ContactModel contactModel = new ContactModel();
		Contact contact = new Contact();
		contact.setSubject("aaaa");
		contact.setDescription("aaaa");
		contact.setEmail("aaaa");
		contact.setPhone("aaaa");
		contact.setName("aaaa");
		contact.setCreated(new java.util.Date());
		contact.setStatus(true);
		
		System.out.println(contactModel.create(contact));
	}
}
