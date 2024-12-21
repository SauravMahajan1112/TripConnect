package com.saurav.TripConnects.entity;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Travel {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String email;
	private String destination;
	private long ph;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate travelDate;
	private String gender;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate dateOfBirth;

	public Travel(String name, String email, String destination, long ph, LocalDate travelDate, String gender,
			LocalDate dateOfBirth) {
		super();
		this.name = name;
		this.email = email;
		this.destination = destination;
		this.ph = ph;
		this.travelDate = travelDate;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
	}

	public Travel() {
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public long getPh() {
		return ph;
	}

	public void setPh(long ph) {
		this.ph = ph;
	}

	public LocalDate getTravelDate() {
		return travelDate;
	}

	public void setTravelDate(LocalDate travelDate) {
		this.travelDate = travelDate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(LocalDate dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", " + (name != null ? "name=" + name + ", " : "")
				+ (email != null ? "email=" + email + ", " : "")
				+ (destination != null ? "destination=" + destination + ", " : "") + "ph=" + ph + ", "
				+ (travelDate != null ? "travelDate=" + travelDate + ", " : "")
				+ (gender != null ? "gender=" + gender + ", " : "")
				+ (dateOfBirth != null ? "dateOfBirth=" + dateOfBirth : "") + "]";
	}

}
