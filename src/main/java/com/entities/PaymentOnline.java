package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PaymentOnline")
public class PaymentOnline {

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "s_no")
    private int s_no;
	
	@Column(name = "application_no")
	private String application_no;
	
	@Column(name = "email_id")
	private String email_id;
	
	@Column(name = "amount")
	private String amount;
	
	


	public int getS_no() {
		return s_no;
	}

	public void setS_no(int s_no) {
		this.s_no = s_no;
	}

	public String getApplication_no() {
		return application_no;
	}

	public void setApplication_no(String application_no) {
		this.application_no = application_no;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}	
}
