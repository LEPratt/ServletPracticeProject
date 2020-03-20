<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    


<%@ page import="com.user.Student"%>

<%Student student = (Student) session.getAttribute("student");%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 

<meta charset="ISO-8859-1">
<title>Courses</title>
<script type="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style type="text/css">.weekDays-selector input {display: none!important;}

.weekDays-selector input[type=checkbox]+ label{ display: inline-block; border-radius: 6px; background: #dddddd; height: 40px; width: 30px; margin-right: 3px; line-height: 40px; text-align: center; cursor: popinter;}

.weekDays-selector input[type=checkbox]:checked + label{background: #2AD705; color: #ffffff }</style>

</head>

<body>

    
       
<nav class="navbar navbar-expand-sm navbar-dark p-3 px-md-4 mb-3 bg-dark">
    <a class="navbar-brand" href="#">Welcome <% out.print(student.getFirstName());%>, enter your classlist!</a> 
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
                       
        </div>
        
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="navbar-nav mr-sm-1 ml-auto">
               <li class="nav-item">
                    <a class="nav-link" href="account.jsp">GPA Calculator</a>
                </li>
                <li class="active">
                    <a class="nav-link" href="course.jsp">Course Scheduler</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="bmi.jsp">BMI Calculator</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div style="margin-top: 5px;"></div>
    <div style="width: 300px;">
    <br><br>
    <form action="SchedulerServlet" method="POST">
    	Course Name
        <select class="form-control" name="courseName">
            <option value="Java Programming">Java Programming</option> 
            <option value="C# Programming">C# Programming</option>      
            <option value="C++ Programming">C++ Programming</option>        
            <option value="Ruby on Rails Programming">Ruby on Rails Programming</option>        
            <option value="Php Programming">Php Programming</option>
            <option value="SQL Programming">SQL Programming</option>
            <option value="Javascript Programming">Javascript Programming</option>
        </select>
         <br>
        Professors
        <select class="form-control" name="professor">
            <option value="John White">John White</option> 
            <option value="Michael Brown">Michael Brown</option>      
            <option value="Tina Doe">Tina Doe</option>        
            <option value="Emily Winter">Emily Winter</option>        
            <option value="Christene Summer">Christene Summer</option>
        </select>
       
        <br>
        <div class="weekDays-selector">
            <input type="checkbox" name="weekday" value="MONDAY" id="weekday-mon" class="weekday" />
                <label for="weekday-mon">M</label>
            <input type="checkbox" name="weekday" value="TUESDAY" id="weekday-tue" class="weekday" />
                <label for="weekday-tue">T</label>
            <input type="checkbox" name="weekday" value="WEDNESDAY" id="weekday-wed" class="weekday" />
                <label for="weekday-wed">W</label>
            <input type="checkbox" name="weekday" value="THURSDAY" id="weekday-thu" class="weekday" />
                <label for="weekday-thu">T</label>
            <input type="checkbox" name="weekday" value="FRIDAY" id="weekday-fri" class="weekday" />
                <label for="weekday-fri">F</label>
        </div>
        <br>
        
        <p>Date: <input type="Date" name="startDate" id="datepicker"><br>
            Time: <input type="time" name="time" id="timepicker"> <br>
            Room: <input type="text" name="roomNumber" id="roomNumber">
        </p>  
        <button type="submit" class="btn btn-dark">Add Course</button>
    </form>
    <br>
    <br>
</div>
    <div class="table-responsive-sm">
        <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Course Name</th>
                <th scope="col">Professor</th>
                <th scope="col">Days</th>
                <th scope="col">Start Date</th>
                <th scope="col">Time</th>
                <th scope="col">Room Number</th>
              </tr>
            </thead>                          
            <tbody>
                <c:forEach var="course" items="${student.courses}">                
                    <tr>
                        <td><c:out value="${course.courseName}"/></td>
                        <td><c:out value="${course.professor}"/></td>                        
                        <td>
                        <c:forEach var="WeekDay" items="${course.occurrences}">
                        <c:out value="${WeekDay} "/>
                        </c:forEach>
                        </td>
                        <td><c:out value="${course.startDate}"/></td>
                        <td><c:out value="${course.time}"/></td>
                        <td><c:out value="${course.roomNumber}"/></td>                    
                    </tr>
                </c:forEach>
            </tbody>                
          </table>
      </div>

    </div>
<br>
<br>
<br>
</body>
<footer>
                <p>&copy; 2020 Company, Inc.</p>
</footer>
</html>