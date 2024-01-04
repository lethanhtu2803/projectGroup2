package com.demo.models;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.entities.ConnectDB;
import com.demo.entities.Owner;


public class OwnerModel {
	public List<Owner> findAll() {
		List<Owner> result = new ArrayList<Owner>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("SELECT * FROM owner");
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Owner owner = new Owner();
				owner.setId(resultSet.getInt("id"));
				owner.setName(resultSet.getString("name"));
				owner.setBirthday(new Date(resultSet.getDate("birthday").getTime()));
				owner.setPhone(resultSet.getString("phone"));
				owner.setAddress(resultSet.getString("address"));
				owner.setIdentifynumber(resultSet.getString("identifynumber"));
				owner.setCreated(new java.util.Date());
				owner.setAvatar(resultSet.getString("avatar"));
				result.add(owner);
			}
		} catch (SQLException e) {
			result = null;
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectDB.disconnect();
		}
		
		return result;
	}
	public List<Owner> findByKeyword(String keyword) {
		List<Owner> result = new ArrayList<Owner>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("SELECT * FROM owner where name like ?");
			preparedStatement.setString(1, "%" + keyword + "%");
			
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Owner owner = new Owner();
				owner.setId(resultSet.getInt("id"));
				owner.setName(resultSet.getString("name"));
				owner.setBirthday(new Date(resultSet.getDate("birthday").getTime()));
				owner.setPhone(resultSet.getString("phone"));
				owner.setAddress(resultSet.getString("address"));
				owner.setIdentifynumber(resultSet.getString("identifynumber"));
				owner.setCreated(new java.util.Date());
				owner.setAvatar(resultSet.getString("avatar"));
				result.add(owner);
			}
		} catch (SQLException e) {
			result = null;
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectDB.disconnect();
		}
		
		return result;
	}
	
	public Owner findById(int id) {
		Owner owner = null;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("SELECT * FROM owner where id = ?");
			preparedStatement.setInt(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				owner = new Owner();
				owner.setId(resultSet.getInt(id));
				owner.setName(resultSet.getString("name"));
				owner.setBirthday(new Date(resultSet.getDate("birthday").getTime()));
				owner.setPhone(resultSet.getString("phone"));
				owner.setAddress(resultSet.getString("address"));
				owner.setIdentifynumber(resultSet.getString("identifynumber"));
				owner.setCreated(new java.util.Date());
				owner.setAvatar(resultSet.getString("avatar"));
			}
		} catch (SQLException e) {
			owner = null;
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectDB.disconnect();
		}
		
		return owner;
	}
	
	
	public static void main(String[] args) {
		System.out.println(new OwnerModel().findByKeyword("Lê Thanh Tú"));;
	}
}
