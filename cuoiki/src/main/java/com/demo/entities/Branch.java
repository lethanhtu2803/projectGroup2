package com.demo.entities;
// Generated Nov 21, 2023, 12:19:37 AM by Hibernate Tools 4.3.6.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Branch generated by hbm2java
 */
@Entity
@Table(name = "branch")
public class Branch implements java.io.Serializable {

	private Integer id;
	private String name;
	private String address;
	private Set<Systemapartment> systemapartments = new HashSet<Systemapartment>(0);

	public Branch() {
	}

	public Branch(String name, String address) {
		this.name = name;
		this.address = address;
	}

	public Branch(String name, String address, Set<Systemapartment> systemapartments) {
		this.name = name;
		this.address = address;
		this.systemapartments = systemapartments;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "name", nullable = false, length = 250)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "address", nullable = false, length = 250)
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "branch")
	public Set<Systemapartment> getSystemapartments() {
		return this.systemapartments;
	}

	public void setSystemapartments(Set<Systemapartment> systemapartments) {
		this.systemapartments = systemapartments;
	}

}
