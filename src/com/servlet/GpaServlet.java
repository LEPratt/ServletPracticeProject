package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Student;


@WebServlet("/GpaServlet")
public class GpaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public GpaServlet() {
        super();
    }

	// doGet method for gpa
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Assign variables
		String grade1 = request.getParameter("gradeOne");
		String grade2 = request.getParameter("gradeTwo");
		String grade3 = request.getParameter("gradeThree");
		int credit = 12;
		
		//Convert string data to double and perform calculations
		double gpa = ((Double.parseDouble(grade1)*credit)+(Double.parseDouble(grade2)*credit)+(Double.parseDouble(grade3)*credit))/36;
		
		//Get session and student object
		HttpSession session=request.getSession(true);
		Student student = (Student)session.getAttribute("student");
		
		//Set student gpa and return student object to account.jsp
		student.setGpa(gpa);
		session.setAttribute("student", student);
		RequestDispatcher rs = request.getRequestDispatcher("account.jsp");
		rs.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
