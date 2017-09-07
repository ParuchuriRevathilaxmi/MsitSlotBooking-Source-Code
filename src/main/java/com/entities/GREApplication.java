package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "GREApplication")
public class GREApplication 
{
 @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
 @Column(name = "s_no")
 private int s_no;
 
 @Column(name="email_id")
 private String email_id;
 
 @Column(name = "application_no")
 private String application_no;
 
 @Column(name = "payment_details")
 private String payment_details;
 
 @Column(name = "exam_type")
 private String exam_type;
 
 @Column(name = "gre_vq")
 private int gre_vq;
 
 @Column(name = "gre_an")
 private float gre_an;

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

 public int getGre_vq() {
  return gre_vq;
 }

 public void setGre_vq(int gre_vq) {
  this.gre_vq = gre_vq;
 }

 public float getGre_an() {
  return gre_an;
 }

 public void setGre_an(float gre_an) {
  this.gre_an = gre_an;
 }
 
 
 
 
}