package com.sonata;

public class Employee {
	int empId;
	String empName;
	double empSal;
	

	Employee(int empId, String empName, double empSal){
		this.empId = empId;
		this.empName = empName;
		this.empSal = empSal;
	}
	public double salCal(double HRA, double DA) {
		double total = this.empSal+HRA+DA;
		return total;
	}
	public void display() {
		System.out.println("Employee Id is : "+empId);
		System.out.println("Employee Name is : "+empName);
		System.out.println("Employee Sal is : "+empSal);
	}
	
}
