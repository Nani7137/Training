package com.sonata;

public class StudentCls {
	int studId;
	String stdName;
	long marks;
	
	StudentCls(int studId, String stdName, long marks){
		this.studId = studId;
		this.stdName = stdName;
		this.marks = marks;
	}
	
	StudentCls(){
		System.out.println("Non-Parameterised Constructor....");
	}
	void updateMarks(int updateMarks) {
		
		this.marks = updateMarks;
		display();
		
		
	}
	
	public void display() {
		System.out.println("Student id is : "+studId);
		System.out.println("Student Name is : "+stdName);
		System.out.println("Student Marks is : "+marks);
	}
		
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		StudentCls std = new StudentCls(101, "Nani M", 900);
		
		std.display();
		System.out.println("\n");
				
		std.updateMarks(950);
		System.out.println("\n");
		
		StudentCls std1 = new StudentCls(102, "Raju M", 970);
		std1.display();

	}

}