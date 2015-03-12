package org.koushik.javabrains;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class XmlServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Xml Servelt called!");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("name");
		HttpSession session = request.getSession();
		ServletContext context = request.getServletContext();
		if (userName != "" && userName != null){			
			session.setAttribute("savedUserName", userName);
			context.setAttribute("savedUserName", userName);
		}	
		out.println("Request parameter has username: " + userName);
		out.println("Session parameter has userName: " + (String)session.getAttribute("savedUserName"));
		out.println("Context parameter has userName: " + (String)context.getAttribute("savedUserName"));
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Xml Servelt called!");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("userName");
		String fullName = request.getParameter("fullName");
		String profession = request.getParameter("prof");
		//String location = request.getParameter("location");
		String[] location = request.getParameterValues("location");
		out.println("hello! from POST " + userName + " & full name is: " + fullName);
		out.println("prof is: "+ profession);
		out.println("location is: "+ location.length + " places");
		for(int i=0; i<location.length; i++){
			out.println("location: "+ location[i]);
		}
	}

}

