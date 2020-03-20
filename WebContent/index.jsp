<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-dark p-3 px-md-4 mb-3 bg-dark">
    <a class="navbar-brand" href="#">Welcome to Claim Academy</a> 
        <div class="navbar-header">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
                       
        </div>
        
        <div id="navbar" class="collapse navbar-collapse">
            
        </div>
</nav>
    <form class="container" action="RegistrationServlet" method="post">
        <div class="form-group">
            <label for="firstName">First Name</label>
            <input type="text" class="form-control" name="firstName" id="firstName" placeholder="First Name">
        </div>
        <div class="form-group">
            <label for="lastName">Last Name</label>
            <input type="text" class="form-control" name="lastName" id="lastName" placeholder="Last Name">
        </div>
        <div class="form-group">
            <label for="email">Email address</label>
            <input type="text" class="form-control" name="email" id="exampleInputEmail1" placeholder="Email">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" name="password" id="password" placeholder="Password">
        </div>
        <br>Address<br>
        <div class="form-group">
            <label for="street">Street</label>
            <input type="text" class="form-control" name="street" id="street" placeholder="Street">
        </div>
        <div class="form-group">
            <label for="city">City</label>
            <input type="text" class="form-control" name="city" id="city" placeholder="City">
        </div>
        <div class="form-group">
            <label for="state">State</label>
            <input type="text" class="form-control" name="state" id="state" placeholder="State">
        </div>
        <div class="form-group">
            <label for="zipCode">Zip Code</label>
            <input type="text" class="form-control" name="zipCode" id="zipCode" placeholder=">Zip Code">
        </div>        
        <div class="checkbox">
            <label>
                <input type="checkbox">Check me out
            </label>
        </div>
        <button type="submit" class="btn btn-dark">Submit</button>
    </form>
<br>
<br>
<br>
</body>

<footer>
                <p>&copy; 2020 Company, Inc.</p>
</footer>
</html>