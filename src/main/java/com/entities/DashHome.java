package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Profile")
public class DashHome 
{
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "s_no")
    private int s_no;
	
	@Column(name = "user_name")
	private String user_name;
	 
	@Column(name = "parent") 
	private String parent;
	
	@Column(name = "email_id")
	private String email_id;
	
	@Column(name = "nationality")
	private String nationality;
	
	@Column(name = "dateOfBirth")
	private String dateOfBirth;
	
	@Column(name = "mobile")
	private String mobile;
	
	@Column(name = "Btech")
	private String Btech;
	
	@Column(name = "address")
	private String address;
	/*Blob photo;*/
	
	@Column(name = "gender")
	private String gender;
	
	public int getS_no() {
		return s_no;
	}

	public void setS_no(int s_no) {
		this.s_no = s_no;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getParent() {
		return parent;
	}

	public void setParent(String parent) {
		this.parent = parent;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getBtech() {
		return Btech;
	}

	public void setBtech(String btech) {
		Btech = btech;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
}
