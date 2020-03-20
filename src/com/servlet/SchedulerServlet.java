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

/**
 * Servlet implementation class SchedulerServlet
 */
@WebServlet("/SchedulerServlet")
public class SchedulerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SchedulerServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Assign variables
				HttpSession session=request.getSession(true);
				Student student = (Student)session.getAttribute("student");	
				
				String[] weekdays =request.getParameterValues("weekday");				
				ArrayList<WeekDay> occurrences = new ArrayList<WeekDay>();
				// Array to ArrayList Conversion 
		        for (String temp : weekdays) 
		        {		        	
		        	occurrences.add(WeekDay.valueOf(temp));
				}				
				
				ArrayList<Course> courses = student.getCourses();	
				
				Course course = new Course();				
				
				course.setCourseName(request.getParameter("courseName"));
				course.setProfessor(request.getParameter("professor"));
				course.setOccurrences(occurrences);
				course.setStartDate(request.getParameter("startDate"));
				course.setTime(request.getParameter("time"));
				course.setRoomNumber(request.getParameter("roomNumber"));			
								
				courses.add(course);
				
				//student.setCourses(courses);
				session.setAttribute("student", student);
				
				RequestDispatcher rs = request.getRequestDispatcher("course.jsp");
				rs.forward(request, response);
				
				
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
