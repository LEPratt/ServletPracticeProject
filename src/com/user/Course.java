package com.user;

import java.util.ArrayList;

public class Course {

	//Assign instance variables
		private String courseName;
		private String professor;
		private ArrayList<WeekDay> occurrences = new ArrayList<WeekDay>();
		private String time;
		private String roomNumber;
		private String startDate;
		
		//Default constructor
		public Course() {}
		
		
		//Getters and setters
		public String getCourseName() {
			return courseName;
		}

		public void setCourseName(String courseName) {
			this.courseName = courseName;
		}

		public String getProfessor() {
			return professor;
		}

		public void setProfessor(String professor) {
			this.professor = professor;
		}

		public ArrayList<WeekDay> getOccurrences() {
			return occurrences;
		}

		public void setOccurrences(ArrayList<WeekDay> occurrences) {
			this.occurrences = occurrences;
		}

		public String getTime() {
			return time;
		}

		public void setTime(String time) {
			this.time = time;
		}

		public String getRoomNumber() {
			return roomNumber;
		}

		public void setRoomNumber(String roomNumber) {
			this.roomNumber = roomNumber;
		}

		public String getStartDate() {
			return startDate;
		}

		public void setStartDate(String startDate) {
			this.startDate = startDate;
		}


		@Override
		public String toString() {
			return courseName + professor + occurrences+ startDate + time + roomNumber;
		}

}
