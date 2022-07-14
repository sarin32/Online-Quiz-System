<%--Document   : StudentInstructions--%>


<%@page import="oes.model.StudentsDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="oes.model.*"%>
<%@page import="oes.db.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Merriweather&display=swap"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String name = StudentsDao.getStudentName(session.getAttribute("username").toString());
	%>
	<div height="200" width=100% style="background-color: yellow">
		<marquee behavior="alternate">
			<h2>
				<font color="green">Welcome <%
					out.println(name);
				%></font>
			</h2>
		</marquee>
	</div>



	<center>
			<%
				int i = 1;
			String username = ""+session.getAttribute("username");
			System.out.println(username);
				ArrayList<Results> results = ResultsDao.getAllRecords(username);
			%>
		<table class="table table-hover">
			<tr>
				<th colspan="6"><center><h4><font color="red">Previous Results</font></h4></center></th>
			</tr>
			<tr>
				<th>Exam No.</th>
				<th>Subject</th>
				<th>No. of Questions</th>
				<th>Attempted</th>
				<th>Correct</th>
				<th>Wrong</th>
			</tr>
			<%
				
				for (Results e : results) {
			%>


			<tr>
				<td><%=i++%></td>
				<td><%=e.getSubject()%></td>
				<td><%=e.getQuestions()%></td>
				<td><%=e.getAttempted()%></td>
				<td><%=e.getCorrect()%></td>
				<td><%=e.getWrong()%></td>
				
			</tr>
			<%
				}
			%>
			<tr>
		</table>
	
		<table class="table table-hover">
			<tr>
				<th><center>
						<h4>
							<font color="red">Instructions</font>
						</h4>
					</center></th>
				<td><button type="button"
						class="btn btn-outline-primary btn-lg"
						onclick="location.href='oes.controller.LogoutStudent'">Logout</button></td>
			</tr>
			<%
				 i = 1;
				ArrayList<Instructions> allinsts = InstructionsDao.getAllRecords();
				for (Instructions e : allinsts) {
			%>


			<tr>
				<td><%=i++%>&nbsp.<%=e.getInstruction()%></td>
			</tr>
			<%
				}
			%>
			<tr>
		</table>


		<form action="Exam.jsp" method="get">
			<select name="subject" style="height: 45px; width: 300px;">
				<%
					ArrayList<String> subjects = QuestionsDao.getAllSubjects();
					for (String s : subjects) {
				%>
				<option value="<%=s%>"><%=s%></option>
				<%
					}
				%>

			</select>
			<button type="submit" class="btn btn-outline-primary btn-lg">Start
				Test</button>
		</form>



	</center>

</body>
</html>