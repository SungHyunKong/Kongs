package com.ts.model;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class PayVO {
	private int pay_code;
	private String pay_writer;
	private String pay_title;
	private String pay_content;
	private String pay_file;
	private String pay_admin;
	private Timestamp pay_date;
	private Timestamp pay_admindate;
	private String str;
	public void setStr(String str) {
		this.str = str;
	}
	private int pay_view;
	private String pay_yn;
	public String getStr() {
		SimpleDateFormat sdf = new SimpleDateFormat( "yy-MM-dd HH:mm:ss" , Locale.KOREA );
		str = sdf.format( new Date( pay_date.getTime( ) ) );
		return str;
	}
	
	public int getPay_code() {
		return pay_code;
	}
	public void setPay_code(int pay_code) {
		this.pay_code = pay_code;
	}
	public String getPay_writer() {
		return pay_writer;
	}
	public void setPay_writer(String pay_writer) {
		this.pay_writer = pay_writer;
	}
	public String getPay_title() {
		return pay_title;
	}
	public void setPay_title(String pay_title) {
		this.pay_title = pay_title;
	}
	public String getPay_content() {
		return pay_content;
	}
	public void setPay_content(String pay_content) {
		this.pay_content = pay_content;
	}
	public String getPay_file() {
		return pay_file;
	}
	public void setPay_file(String pay_file) {
		this.pay_file = pay_file;
	}
	public String getPay_admin() {
		return pay_admin;
	}
	public void setPay_admin(String pay_admin) {
		this.pay_admin = pay_admin;
	}
	public Timestamp getPay_date() {
		return pay_date;
	}
	public void setPay_date(Timestamp pay_date) {
		this.pay_date = pay_date;
	}
	public Timestamp getPay_admindate() {
		return pay_admindate;
	}
	public void setPay_admindate(Timestamp pay_admindate) {
		this.pay_admindate = pay_admindate;
	}
	public int getPay_view() {
		return pay_view;
	}
	public void setPay_view(int pay_view) {
		this.pay_view = pay_view;
	}
	public String getPay_yn() {
		return pay_yn;
	}
	public void setPay_yn(String pay_yn) {
		this.pay_yn = pay_yn;
	}
	

}
