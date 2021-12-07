package com.sonata;

public class Student2 extends StudentEx{
	
	Student2(int Id, String Name, long marks){
		super(Id, Name, marks);
	}
	Student2(){
		super();
	}
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Student2 std1 = new Student2();
		std1.studId = 103;
		std1.stdName = "Kesav M";
		std1.marks = 920;
		
		std1.display();
		
		Student2 std2 = new Student2(102, "Raju M", 950);
		
		std2.display();

	}

}
