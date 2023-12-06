package com.demo.models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.demo.entities.Account;
import com.demo.entities.Accountdetails;
import com.demo.entities.ConnectDB;

public class AccountDetailsModel {
	public Accountdetails findAccountByAccountID(int accID) {
		Accountdetails account = null;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection().prepareStatement("select * from accountdetails where accountid = ?");
			preparedStatement.setInt(1, accID);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				account = new Accountdetails();
				account.setId(resultSet.getInt("id"));
				account.setAddress(resultSet.getString("address"));
				account.setAvatar(resultSet.getString("avatar"));
				account.setBirthday(resultSet.getDate("birthday"));
				account.setAccountid(resultSet.getInt("accountid"));
				account.setPhonenumber(resultSet.getString("phonenumber"));
				account.setUpdatedate(resultSet.getDate("updatedate"));
				account.setName(resultSet.getString("name"));
			}
		} catch (Exception e) {
			e.printStackTrace();
			account = null;
			// TODO: handle exception
		} finally {
			ConnectDB.disconnect();
		}
		return account;
	}
	public static void main(String[] args) {
		AccountDetailsModel accountDetailsModel = new AccountDetailsModel();
		System.out.println(accountDetailsModel.findAccountByAccountID(1));
		System.out.println("Lê Thanh Tú");
	}
}
