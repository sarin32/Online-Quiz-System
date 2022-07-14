package oes.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/oes.controller.AddSubject")
public class AddSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddSubject() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String subject = request.getParameter("subject");
		response.sendRedirect("AddQuestion.jsp?subject=" + subject);
	}
}
