<%--Document:AdminLogin--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="oes.model.QuestionsDao"%>
<%@page import="oes.db.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<style type="text/css">
li {
	float: left;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li a {
	display: inline-block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:HOVER {
	background-color: aqua;
}
</style>
<title>Admin Login</title>

</head>
<body>
	<font color="blue"><center>
			<h2>Add New Subject</h2>
		</center></font>
	<form action="oes.controller.AddSubject" method="post" style="margin:20px;">
			Subject Name 		:	<input type="text" name="subject" style="height:30px;width:400px;">	<br><br> 
			<input type="submit" value="Add Subject"
				class="btn btn-outline-primary" >		
	
	</form>

	<font color="blue"><center>
			<h2>Subjects</h2>
		</center></font>
	<table class="table table-bordered table-hover">
		<tr tr class="table-dark">
			<th>Subject Number</th>
			<th>Subject</th>
			<th colspan="3">Action</th>
		</tr>
		<%
			int i = 0;
			ArrayList<String> subjects = QuestionsDao.getAllSubjects();
			for (String e : subjects) {
		%>

		<tr>
			<td><%=++i%></td>
			<td><%=e%></td>

			<td><a href="QuestionList.jsp?subject=<%=e%>">View</a></td>
			<td><a href="AddQuestion.jsp?subject=<%=e%>">Add Questions</a></td>
			<td><a href="deleteSubject.jsp?subject=<%=e%>">Delete</a></td>

		</tr>
		<%
			}
		%>
		<tr>
			<th colspan="5"><center>
					<input type="button" class="btn btn-outline-danger"
						value="Back to Panel" onclick="location.href='AdminPanel.jsp'">
				</center></th>
		</tr>

	</table>
	</form>

</body>
</html>


















