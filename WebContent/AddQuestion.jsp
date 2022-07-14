<%--Document   : AddQuestion--%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>Add Question</title>
</head>
<body>
	<center>
		<h3>
			<br><font color="blue">Add Question</font><br><br>
		</h3>
	</center>
	<form action="oes.controller.QuestionInsert">
		<pre><%String sub = request.getParameter("subject");%><input type="hidden" name="subject" value='<%=sub%>'>
Question:    <textarea name="Question" style="height:100px;width:700px;"></textarea>

Option A:    <input type="text" name="option1" style="height:30px;width:700px;">

Option B:    <input type="text" name="option2" style="height:30px;width:700px;">

Option C:    <input type="text" name="option3" style="height:30px;width:700px;">

Option D:    <input type="text" name="option4" style="height:30px;width:700px;">

Answer:      <select name="answer" style="height:30px;width:700px;">
             <option value="a">a</option>
             <option value="b">b</option>
             <option value="c">c</option>
             <option value="d">d</option>
             </select>
             </pre>
             <input type="submit" value="Done"
				class="btn btn-outline-primary"> 
                <input type="button"
				onclick="location.href='AdminPanel.jsp'" value="Home"
				class="btn btn-outline-success">    
             <input type="button"
				onclick="location.href='QuestionList.jsp?subject=<%=sub%>'"
				value="Back" class="btn btn-outline-danger">

	</form>
	<div>
		<font color="red"> <%
 	if (request.getParameter("msg2") != null)
 		out.print(request.getParameter("msg2"));
 %>
		</font> <font color="green"> <%
 	if (request.getParameter("msg1") != null)
 		out.print(request.getParameter("msg1"));
 %>
		</font>
	</div>

</body>
</html>