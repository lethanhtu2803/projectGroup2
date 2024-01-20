package com.demo.entities;

import java.util.Date;

public class AccountPartial {
	private int id;
	private String username;
	private String name;
	private Date birthday;
	private String email;
	private String phoneNumber;
	private String address;
	private Date created;
	private String avatar;
	private boolean status;
	private boolean verify;
	private int role;
	public AccountPartial() {
		super();
	}
	
	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public AccountPartial(int id, String username, String name, Date birthday, String email, String phoneNumber,
			String address, Date created, String avatar, boolean status, boolean verify, int role) {
		super();
		this.id = id;
		this.username = username;
		this.name = name;
		this.birthday = birthday;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.created = created;
		this.avatar = avatar;
		this.status = status;
		this.verify = verify;
		this.role = role;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public boolean isVerify() {
		return verify;
	}
	public void setVerify(boolean verify) {
		this.verify = verify;
	}
	@Override
	public String toString() {
		return "AccountPartial [id=" + id + ", username=" + username + ", name=" + name + ", birthday=" + birthday
				+ ", email=" + email + ", phoneNumber=" + phoneNumber + ", address=" + address + ", created=" + created
				+ ", avatar=" + avatar + ", status=" + status + ", verify=" + verify + "]";
	}
}
