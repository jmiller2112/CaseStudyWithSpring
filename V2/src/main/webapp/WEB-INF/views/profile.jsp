<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Profile</title>
    
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link href="<c:url value="/resources/css/styling.css" />" rel="stylesheet">

</head>
<body style = "background-color: #1f2833;">

<%
	if(session.getAttribute("userName") == null){
		response.sendRedirect("errorPage");
		session.setAttribute("error", "You are not logged in");
	}
%>
    <div class = "container" style="background-color: #0b0c10; padding-top: 40px; margin-top: 150px; border-radius: 25px; ">
        <div class = "jumbotron text-center" style ="background-color:#fc7b0a">
            <h1>Profile</h1>
            <nav>
                |<a href = "#" style= "color:#000000">Profile </a>|
                <a href = "addGame" style= "color:#000000">Add Game</a>|
                <a href = "playGame" style= "color:#000000">Play Game</a>|
                <a href = "editGame" style= "color:#000000">Update Game</a>|
                <a href = "deleteGame" style= "color:#000000">Delete Game</a>|
                <a href = "compare" style= "color:#000000">Compare</a>|
                <a href = "logout" style= "color:#000000">Logout</a>|
            </nav>
        </div>
        <table>
            <thead>
                <tr>
                    <th>Game</th>
                    <th>Hours Played</th>
                    <th>Times Completed</th>
                    <th>Current List</th>
                </tr>
            </thead>
              <tbody>
              <c:forEach var="userGame" items="${profileListBean }">
                <tr>
                    <td>${userGame.gameName}</td>
                    <td>${userGame.gameHours}</td>
                    <td>${userGame.timesCompleted}</td>
                    <td>${userGame.currentList}</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>