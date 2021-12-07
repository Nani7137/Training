package com.sonata.JavaBean;

public class TestStudent {
	public static void main(String[] args) {
		Address a = new Address();
		a.setCity("Bengalore");
		a.setState("KKR");
		a.setPin(533253);
		
		Student s = new Student();
		s.setStdId(101);
		s.setStdName("Kesav");
		s.setStdMaks(800);
		s.setObj(a);
		System.out.println(s);
	}
}
