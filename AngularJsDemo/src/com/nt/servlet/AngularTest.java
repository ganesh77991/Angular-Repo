package com.nt.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Servlet implementation class AngularTest
 */
@WebServlet("/angular")
public class AngularTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/json");
		
		String name=request.getParameter("obj");
		
		System.out.println(name);
		
		PrintWriter out=response.getWriter();

		List<String> list = new ArrayList<>();

		list.add("emp1");
		list.add("emp2");
		list.add("emp3");
		list.add("emp4");

		System.out.println(list);
		ObjectMapper om = new ObjectMapper();
		String jsonList = om.writeValueAsString(list);
				//System.out.println(jsonList);
		out.println(jsonList);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("this is from servlet");

		
	}

}
