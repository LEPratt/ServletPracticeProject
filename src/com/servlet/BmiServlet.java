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

//Servlet implementation class BmiServlet
 
@WebServlet("/BmiServlet")
public class BmiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BmiServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Assign variables
		String weight = request.getParameter("weight");
		String height = request.getParameter("height");
		double a = Double.parseDouble(weight)*0.45;
		double b = Double.parseDouble(height)*0.025;
		double bmi = ((a)/(b*b));
		HttpSession session=request.getSession(true);
		Student student = (Student)session.getAttribute("student");
		student.setBmi(bmi);
		session.setAttribute("student", student);
		RequestDispatcher rs = request.getRequestDispatcher("bmi.jsp");
		rs.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
