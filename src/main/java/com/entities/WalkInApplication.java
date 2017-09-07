package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "WalkInApplication")
public class WalkInApplication 
{
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "s_no")
	private int s_no;
	
	@Column(name="email_id")
	private String email_id;
	
	@Column(name = "application_no")
	private String application_no;
	
	@Column(name = "test_center")
	private String test_center;
	
	@Column(name = "payment_details")
	private String payment_details;
	
	@Column(name = "exam_type")
	private String exam_type;
	
	@Column(name = "date")
	private String date;
	
	@Column(name = "slot")
	private String slot;
	
	@Column(name = "score")
	private int score;

	@Column(name = "wcount")
	private int wcount = 1;
	

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

	public String getApplication_no() {
		return application_no;
	}

	public void setApplication_no(String application_no) {
		this.application_no = application_no;
	}

	public String getTest_center() {
		return test_center;
	}

	public void setTest_center(String test_center) {
		this.test_center = test_center;
	}

	public String getPayment_details() {
		return payment_details;
	}

	public void setPayment_details(String payment_details) {
		this.payment_details = payment_details;
	}

	public String getExam_type() {
		return exam_type;
	}

	public void setExam_type(String exam_type) {
		this.exam_type = exam_type;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getSlot() {
		return slot;
	}

	public void setSlot(String slot) {
		this.slot = slot;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
	
	public int getWcount() {
		return wcount;
	}

	public void setWcount(int wcount) {
		this.wcount = wcount;
	}
	
}
