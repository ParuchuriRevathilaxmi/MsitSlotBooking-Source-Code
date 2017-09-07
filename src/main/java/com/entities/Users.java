package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
 
@Entity
@Table(name = "registration")
public class Users
{
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "s_no")
	private int s_no;

    @Column(name ="email_id")
    private String email_id; 
    
    @Column(name="password")
    private String password;
    
    @Column(name="activation")
    private int activation;

	public int getS_no() {
		return s_no;
	}

	public void setS_no(int s_no) {
		this.s_no = s_no;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getActivation() {
		return activation;
	}

	public void setActivation(int activation) {
		this.activation = activation;
	}

	
}