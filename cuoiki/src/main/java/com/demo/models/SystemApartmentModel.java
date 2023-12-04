package com.demo.models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.demo.entities.ConnectDB;
import com.demo.entities.Post;
import com.demo.entities.Systemapartment;

public class SystemApartmentModel {
	public List<Systemapartment> findAll(){
		List<Systemapartment> systemapartments = new ArrayList<Systemapartment>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection().prepareStatement("select * from systemapartment");
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Systemapartment systemapartment = new Systemapartment();
				systemapartment.setId(resultSet.getInt("id"));
				systemapartment.setSubject(resultSet.getString("subject"));
				systemapartment.setBranchid(resultSet.getInt("branchid"));
				systemapartment.setFloorid(resultSet.getInt("floorid"));
				systemapartment.setRoomid(resultSet.getInt("roomid"));
				systemapartment.setBedroom(resultSet.getInt("bedroom"));
				systemapartment.setBathroom(resultSet.getInt("bathroom"));
				systemapartment.setPrice(resultSet.getDouble("price"));
				systemapartment.setDeposit(resultSet.getDouble("deposit"));
				systemapartment.setArea(resultSet.getString("area"));
				systemapartment.setAvatar(resultSet.getString("avatar"));
				systemapartment.setStatus(resultSet.getBoolean("status"));
				systemapartment.setDescription(resultSet.getString("description"));
				systemapartments.add(systemapartment);
			}
		} catch (Exception e) {
			e.printStackTrace();
			systemapartments = null;
			// TODO: handle exception
		} finally {
			ConnectDB.disconnect();
		}
		
		return systemapartments;
	}
	public static void main(String[] args) {
		SystemApartmentModel apartmentModel = new SystemApartmentModel();
		System.out.println(apartmentModel.findAll());
	}
}
