package oes.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import oes.db.Questions;
import oes.model.QuestionsDao;

@WebServlet("/oes.controller.QuestionInsert")
public class QuestionInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public QuestionInsert() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		String subject = request.getParameter("subject");
		String question = request.getParameter("Question");
		String a = request.getParameter("option1");
		String b = request.getParameter("option2");
		String c = request.getParameter("option3");
		String d = request.getParameter("option4");
		String answer = request.getParameter("answer");

		Questions q = new Questions();
		q.setA(a);
		q.setB(b);
		q.setC(c);
		q.setD(d);
		q.setAnswer(answer);
		q.setQuestion(question);
		q.setSubject(subject);

		boolean status = QuestionsDao.insertQuestion(q);

		if (status) {
			String msg1 = "Question Added";
			response.sendRedirect("AddQuestion.jsp?msg1=" + msg1 + "&subject=" + subject);
		} else {
			String msg2 = "Question not Added";
			response.sendRedirect("AddQuestion.jsp?msg2=" + msg2 + "&subject=" + subject);
		}

	}

}