package com.sonata.Annotation;

class ShowOne{
	public void show() {
		System.out.println("It is Showone Method.......");
	}
}

class ShowTwo extends  ShowOne{
	@Override
	public void show() {
		super.show();
		System.out.println("It is ShowTwo");
	}
}
public class MyAnnotation {
	public static void main(String[] args) {
		ShowTwo st = new ShowTwo();
		st.show();
	}
}
