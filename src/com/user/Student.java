package com.user;

import java.util.ArrayList;

public class Student {
	//Assign instance variables
		private String firstName;
		private String lastName;
		private String email;
		private String schoolName;
		private String password;
		private double gpa;
		private Address address;
		private double bmi;
		private ArrayList<Course> courses = new ArrayList<Course>();
		
		//Default constructor
		public Student() {}
		
		//Parameterized constructor
		public Student(String firstName, String lastName, String email, String schoolName, String password, double gpa, Address address, double bmi) {
			this.firstName = firstName;
			this.lastName = lastName;
			this.email = email;
			this.schoolName = schoolName;
			this.password = password;
			this.gpa = gpa;
			this.address = address;
			this.bmi = bmi;
		}

		//Getters and setters
		public String getFirstName() {
			return firstName;
		}	
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
	
		public String getLastName() {
			return lastName;
		}	
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
	
		public String getEmail() {
			return email;
		}	
		public void setEmail(String email) {
			this.email = email;
		}
	
		public String getSchoolName() {
			return schoolName;
		}	
		public void setSchoolName(String schoolName) {
			this.schoolName = schoolName;
		}
	
		public String getPassword() {
			return password;
		}	
		public void setPassword(String password) {
			this.password = password;
		}
	
		public double getGpa() {
			return gpa;
		}	
		public void setGpa(double gpa) {
			this.gpa = gpa;
		}
	
		public Address getAddress() {
			return address;
		}	
		public void setAddress(Address address) {
			this.address = address;
		}
	
		public double getBmi() {
			return bmi;
		}	
		public void setBmi(double bmi) {
			this.bmi = bmi;
		}

		public ArrayList<Course> getCourses() {
			return courses;
		}

		public void setCourses(ArrayList<Course> courses) {
			this.courses = courses;
		}
		
	
}
