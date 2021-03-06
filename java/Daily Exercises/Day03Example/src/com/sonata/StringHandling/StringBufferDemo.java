package com.sonata.StringHandling;

public class StringBufferDemo {

		public static void main(String args[]) {
		StringBuffer sb = new StringBuffer("Jonathan");
		System.out.println("sb = " + sb);
		System.out.println("capacity of sb: "+sb.capacity());
		System.out.println("append \'O\' to sb: " + sb.append('O'));
		System.out.println("sb = " + sb);
		System.out.println("3rd character of sb: " + sb.charAt(2)); 
		char charArr[] = "Hi XX".toCharArray();
		sb.getChars(0, 2, charArr, 3);
		System.out.print("getChars method: ");
	    System.out.println(charArr);
		System.out.println("Insert \'jo\' at the 3rd cell: " + sb.insert(2, "jo"));
		System.out.println("Delete \'jo\' at the 3rd cell: " + sb.delete(2,4));
	    System.out.println("length of sb: " + sb.length());
}
}