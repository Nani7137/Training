package com.sonata;

public class StudentEx {

	int studId;
	String stdName;
	long marks;
	
	StudentEx(int studId, String stdName, long marks){
		this.studId = studId;
		this.stdName = stdName;
		this.marks = marks;
	}
	
	StudentEx(){
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
		StudentEx std = new StudentEx(101, "Nani M", 900);
		
		std.display();
		
		std.updateMarks(950);

	}

}
