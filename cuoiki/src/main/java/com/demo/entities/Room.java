package com.demo.entities;

public class Room {
	private int id;
	private String name;
	public Room(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public Room() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Room [id=" + id + ", name=" + name + "]";
	}
	
}
