<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.user.Student"%>
<%Student student = (Student) session.getAttribute("student");%> 

<!DOCTYPE html>
<html>
<head> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="./styles/style2.css">
<meta charset="ISO-8859-1">
<title>GPA</title>
</head>
<body>
    <nav class="navbar navbar-expand-sm navbar-dark p-3 px-md-4 mb-3 bg-dark">
    <a class="navbar-brand" href="#">Welcome to <% out.print(student.getSchoolName());%></a> 
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
                       
        </div>
        
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="navbar-nav mr-sm-1 ml-auto">
               <li class="active">
                    <a class="nav-link" href="account.jsp">GPA Calculator</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="course.jsp">Course Scheduler</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="bmi.jsp">BMI Calculator</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
        <div class="container">
            <h1>Hello, ${param.firstName}<%-- <% out.print(student.getFirstName());%> --%></h1>
            <p>This is a simple java servlet program to calculate your GPA. </p>
        </div>
    </div>
    <div class="container">
        <!-- Example row of columns -->
        <div class="row">
            <div class="col-md-4">
                <h2>My GPA</h2>
                <p><% out.print(student.getGpa()); %></p>
            </div>
            <div class="col-md-4">
                <h2>Enter Grades</h2>
                <form action="GpaServlet" method="post">
                    <div class="form-group">
                        <label for="gradeOne">Grade One</label>
                        <input type="text" class="form-control" name="gradeOne" id="gradeOne" placeholder="Grade One">
                    </div>
                    <div class="form-group">
                        <label for="gradeTwo">Grade Two</label>
                        <input type="text" class="form-control" name="gradeTwo" id="gradeTwo" placeholder="Grade Two">
                    </div>
                    <div class="form-group">
                        <label for="gradeThree">Grade Three</label>
                        <input type="text" class="form-control" name="gradeThree" id="gradeThree" placeholder="Grade Three">
                    </div>
                    <button  type="submit" class="btn btn-dark">Submit</button>
                </form>
               
            </div>
            <hr>
            <br>
			<br>
			<br>            
        </div><!-- container -->
    </div>
</body>
<footer>
                <p>&copy; 2020 Company, Inc.</p>
</footer>
</html>