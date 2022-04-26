
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Login</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body style = "background-color: #1f2833;">
    <div class = "container" style="background-color: #0b0c10; padding-top: 40px; margin-top: 150px; border-radius: 25px;">
        <div class = "jumbotron text-center" style ="background-color:#fc7b0a">
            <h1>Login</h1>
        </div>
        <form action = "loginAttempt" method = "POST">
            <input type="text" name="userName" placeholder="Username"/>
            <input type="password" name="password" placeholder="Password"/>
            <button type = "submit">Login</button>
        </form>
        <div style="color: white">
            New here? <a href="register">Sign Up</a> and start playing today!
        </div>
        <img src="/VideoGameTracker/resources/images/singleController.jpg" alt="" style="width: 100%">
    </div>
</body>
</html>