package com.demo.models;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.demo.entities.Account;
import com.demo.entities.ConnectDB;
import com.demo.entities.Contract;
import com.demo.entities.PostImage;

public class ContractApartmentModel {
	public List<Contract> findAll(){
		List<Contract> contracts = new ArrayList<Contract>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection().prepareStatement("select * from contract");
		
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Contract contract = new Contract();
				contract.setId(resultSet.getInt("id"));
				contract.setOwnerid(resultSet.getInt("ownerid"));
				contract.setCreated(resultSet.getDate("created"));
				contract.setStatus(resultSet.getBoolean("status"));
				contract.setSystemapartmentid(resultSet.getInt("systemapartmentid"));
				contract.setDescription(resultSet.getString("description"));
				contracts.add(contract);
			}
		} catch (Exception e) {
			e.printStackTrace();
			contracts = null;
			// TODO: handle exception
		} finally {
			ConnectDB.disconnect();
		}
		
		return contracts;
	}
	public Contract findContractByID(int id){
		Contract contract = null;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection().prepareStatement("select * from contract where id = ?");
			preparedStatement.setInt(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				contract = new Contract();
				contract.setId(resultSet.getInt("id"));
				contract.setOwnerid(resultSet.getInt("ownerid"));
				contract.setCreated(resultSet.getDate("created"));
				contract.setStatus(resultSet.getBoolean("status"));
				contract.setSystemapartmentid(resultSet.getInt("systemapartmentid"));
				contract.setDescription(resultSet.getString("description"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			contract = null;
			// TODO: handle exception
		} finally {
			ConnectDB.disconnect();
		}
		
		return contract;
	}


	
	public static void main(String[] args) {
		ContractApartmentModel contractApartmentModel = new ContractApartmentModel();
		System.out.println(contractApartmentModel.findContractByID(1));
	}
}	
