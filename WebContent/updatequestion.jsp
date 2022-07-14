<%--Document   : updatequestion--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="oes.model.*"%>
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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Update Questions</title>
</head>
<body>
	<center>
		<h3>
			<br><font color="blue">Update Question</font><br><br>
		</h3>
	</center>

	<%
		int i = 0;
		ArrayList<Questions> allQuestions = QuestionsDao.getAllRecords(request.getParameter("subject"));
		for (Questions e : allQuestions) {
			if (request.getParameter("ques").equals(e.getQuestion())) {
	%>
	<form action="updatequestionnow.jsp">
		<input type="hidden" value="<%=e.getQuestion()%>" type="text"
			name="quesoriginal"> <input type="hidden"
			value="<%=request.getParameter("subject")%>" type="text"
			name="subject">
			<pre>
	Question: <textarea  name="quesmodified" style="height:100px;width:700px;"><%=e.getQuestion()%>"</textArea>
	
	Option A: <input type="text" value=<%=e.getA()%> name="opta" style="height:30px;width:700px;"></input>
	
	Option B: <input type="text" value=<%=e.getB()%> name="optb" style="height:30px;width:700px;"></input>
	
	Option C: <input type="text" value=<%=e.getC()%> name="optc" style="height:30px;width:700px;"></input>
	
	Option D: <input type="text" value=<%=e.getD()%> name="optd" style="height:30px;width:700px;"></input>
		
	Answer:   <select name="answer" style="height:30px;width:100px;">
			<option value="a">a</option>
			<option value="b">b</option>
			<option value="c">c</option>
			<option value="d">d</option>
		</select>
		
	<input type="submit" value="update" class="btn btn-outline-danger"> <a
			href="deletequestion.jsp?ques=<%=e.getQuestion()%>">Delete</a>                                               <input
			 type="button" class="btn btn-outline-success" value="Add Question" 
			 onclick="location.href='AddQuestion.jsp?subject=<%=request.getParameter("subject")%>'"> <input
			  type="button" class="btn btn-outline-danger"
		value="Back to Panel" onclick="location.href='AdminPanel.jsp'"></pre> 
	</form>

	<%
		break;
			}
		}
	%>
	
</body>
</html>
