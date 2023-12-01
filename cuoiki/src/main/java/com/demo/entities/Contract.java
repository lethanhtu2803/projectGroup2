package com.demo.entities;
// Generated Nov 21, 2023, 12:19:37 AM by Hibernate Tools 4.3.6.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Contract generated by hbm2java
 */
@Entity
@Table(name = "contract")
public class Contract implements java.io.Serializable {

	private Integer id;
	private Owner owner;
	private Systemapartment systemapartment;
	private boolean status;
	private Date created;
	private String description;

	public Contract() {
	}

	public Contract(Owner owner, Systemapartment systemapartment, boolean status, Date created, String description) {
		this.owner = owner;
		this.systemapartment = systemapartment;
		this.status = status;
		this.created = created;
		this.description = description;
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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ownerid", nullable = false)
	public Owner getOwner() {
		return this.owner;
	}

	public void setOwner(Owner owner) {
		this.owner = owner;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "systemapartmentid", nullable = false)
	public Systemapartment getSystemapartment() {
		return this.systemapartment;
	}

	public void setSystemapartment(Systemapartment systemapartment) {
		this.systemapartment = systemapartment;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "created", nullable = false, length = 10)
	public Date getCreated() {
		return this.created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	@Column(name = "description", nullable = false, length = 500)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}