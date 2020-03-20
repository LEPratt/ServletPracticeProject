package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Course;
import com.user.Student;
import com.user.WeekDay;


@WebServlet("/SchedulerServlet")
public class SchedulerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   //Default constructor
    public SchedulerServlet() {
        super();
    }

	//doGet statment
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
				//Get session and student object
				HttpSession session=request.getSession(true);
				Student student = (Student)session.getAttribute("student");	
				
				//Assign variables
				String[] weekdays =request.getParameterValues("weekday");				
				ArrayList<WeekDay> occurrences = new ArrayList<WeekDay>();
				
				// Array to ArrayList Conversion 
		        for (String temp : weekdays) 
		        {		        	
		        	occurrences.add(WeekDay.valueOf(temp));
				}				
				
		        //Get the current course list from the student
				ArrayList<Course> courses = student.getCourses();	
				
				//Create new course and get valuse from course.jsp
				Course course = new Course();
				course.setCourseName(request.getParameter("courseName"));
				course.setProfessor(request.getParameter("professor"));
				course.setOccurrences(occurrences);
				course.setStartDate(request.getParameter("startDate"));
				course.setTime(request.getParameter("time"));
				course.setRoomNumber(request.getParameter("roomNumber"));			
				
				//Add the new course to the course list
				courses.add(course);
				
				//Return the updated data to the course.jsp
				session.setAttribute("student", student);				
				RequestDispatcher rs = request.getRequestDispatcher("course.jsp");
				rs.forward(request, response);
				
				
				
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
