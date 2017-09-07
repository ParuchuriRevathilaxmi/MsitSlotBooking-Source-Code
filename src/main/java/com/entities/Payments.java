package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "payments")
public class Payments
{
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "s_no")
    private int s_no;
	
	@Column(name = "application_no")
	private String application_no;
	
	@Column(name = "amount")
	private String amount;
	
	@Column(name="exam_type")
	private String exam_type;
	
	@Column(name="DD_no")
	private String DD_no;
	
	@Column(name="bank_name")
	private String bank_name;
	
	@Column(name="bank_branch")
	private String bank_branch;
	
	@Column(name="issue_date")
	private String issue_date;

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

	public String getExam_type() {
		return exam_type;
	}

	public void setExam_type(String exam_type) {
		this.exam_type = exam_type;
	}

	public String getDD_no() {
		return DD_no;
	}

	public void setDD_no(String dD_no) {
		DD_no = dD_no;
	}

	public String getBank_name() {
		return bank_name;
	}

	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}

	public String getBank_branch() {
		return bank_branch;
	}

	public void setBank_branch(String bank_branch) {
		this.bank_branch = bank_branch;
	}

	public String getIssue_date() {
		return issue_date;
	}

	public void setIssue_date(String issue_date) {
		this.issue_date = issue_date;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}
	
	
}
