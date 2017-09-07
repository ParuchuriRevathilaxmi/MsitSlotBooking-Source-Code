package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ExamDetails")
public class ExamDetails 
{
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "s_no")
	private int s_no;
	
	@Column(name="gre_quant")
	private String gre_quant;
	
	@Column(name = "gre_ana")
	private String gre_ana;
	
	@Column(name = "gat_lastdate")
	private String gat_lastdate;
	
	@Column(name = "walkin_startdate")
	private String walkin_startdate;
	
	@Column(name = "walkin_enddate")
	private String walkin_enddate;

	public int getS_no() {
		return s_no;
	}

	public void setS_no(int s_no) {
		this.s_no = s_no;
	}

	public String getGre_quant() {
		return gre_quant;
	}

	public void setGre_quant(String gre_quant) {
		this.gre_quant = gre_quant;
	}

	public String getGre_ana() {
		return gre_ana;
	}

	public void setGre_ana(String gre_ana) {
		this.gre_ana = gre_ana;
	}

	public String getGat_lastdate() {
		return gat_lastdate;
	}

	public void setGat_lastdate(String gat_lastdate) {
		this.gat_lastdate = gat_lastdate;
	}

	public String getWalkin_startdate() {
		return walkin_startdate;
	}

	public void setWalkin_startdate(String walkin_startdate) {
		this.walkin_startdate = walkin_startdate;
	}

	public String getWalkin_enddate() {
		return walkin_enddate;
	}

	public void setWalkin_enddate(String walkin_enddate) {
		this.walkin_enddate = walkin_enddate;
	}
}
