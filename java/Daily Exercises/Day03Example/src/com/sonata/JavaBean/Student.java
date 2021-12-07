package com.sonata.JavaBean;

public class Student { 
	private int stdId;
	private String stdName;
	private double stdMaks;
	Address obj;
	
	
	public int getStdId() {
		return stdId;
	}
	public void setStdId(int stdId) {
		this.stdId = stdId;
	}
	public String getStdName() {
		return stdName;
	}
	public void setStdName(String stdName) {
		this.stdName = stdName;
	}
	public double getStdMaks() {
		return stdMaks;
	}
	public void setStdMaks(double stdMaks) {
		this.stdMaks = stdMaks;
	}
	public Address getObj() {
		return obj;
	}
	public void setObj(Address obj) {
		this.obj = obj;
	}
	public String toString() {
		return "Student [ Student_Marks : "+ stdMaks + "";
	}
	
	
}
