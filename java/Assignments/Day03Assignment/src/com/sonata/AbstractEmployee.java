package com.sonata;

public abstract class AbstractEmployee {
	int EmployeeID;
	String EmployeeName;
	Address Address;
	double BasicPay;
	int	Noofleaveavailable;
	
	AbstractEmployee(int a , String b){
		this.EmployeeID = a;
		this.EmployeeName = b ;
	}
	
	AbstractEmployee(int a, String b, Address c, double d, int e){
		this.EmployeeID = a;
		this.EmployeeName = b ;
		this.Address = c;
		this.BasicPay = d;
		this.Noofleaveavailable = e;
	}
	
	public abstract double calculateSal();
	
	public void display() {
		System.out.println("Employee Id : "+EmployeeID);
		System.out.println("Employee Name : "+EmployeeName);
		System.out.println("Employee Address : "+Address);
		System.out.println("Employee Basic Pay : "+BasicPay);
		System.out.println("Employee No of leaves Available : "+Noofleaveavailable);
	}
	

}
