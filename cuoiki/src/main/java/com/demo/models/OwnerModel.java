package com.demo.models;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.demo.entities.Account;
import com.demo.entities.ConnectDB;
import com.demo.entities.Contract;
import com.demo.entities.Owner;
import com.demo.entities.PostImage;

public class OwnerModel {
	public Owner findOwnerByID(int ownerID){
		Owner owner = null;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection().prepareStatement("select * from owner where id = ?");
			preparedStatement.setInt(1, ownerID);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				owner = new Owner();
				owner.setAddress(resultSet.getString("address"));
				owner.setBirthday(resultSet.getDate("birthday"));
				owner.setCreated(resultSet.getDate("created"));
				owner.setId(resultSet.getInt("id"));
				owner.setIdentifynumber(resultSet.getString("identifynumber"));
				owner.setName(resultSet.getString("name"));
				owner.setPhone(resultSet.getString("phone"));
				owner.setAvatar(resultSet.getString("avatar"));
			}
		} catch (Exception e) {
			e.printStackTrace();
			owner = null;
			// TODO: handle exception
		} finally {
			ConnectDB.disconnect();
		}
		
		return owner;
	}

	
	public static void main(String[] args) {
		OwnerModel ownerModel = new OwnerModel();
		System.out.println(ownerModel.findOwnerByID(1));
	}
}	
