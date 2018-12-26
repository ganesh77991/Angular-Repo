package com.nt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ajax")
public class AjaxTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("Hello World");
		
		System.out.println("AjaxTest...G11111");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("application/json");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("data");
		
		System.out.println(name);
		
		name="[\r\n" + 
				"{\"name\":\"mi\",\"id\":20,\"category\":\"mobile\",\"price\":3000},\r\n" + 
				"{\"name\":\"vivo\",\"id\":21,\"category\":\"mobile\",\"price\":6000},\r\n" + 
				"{\"name\":\"oppo\",\"id\":22,\"category\":\"mobile\",\"price\":9000},\r\n" + 
				"{\"name\":\"samsung\",\"id\":23,\"category\":\"mobile\",\"price\":12000},\r\n" + 
				"{\"name\":\"Lenovo\",\"id\":24,\"category\":\"mobile\",\"price\":1000},\r\n" + 
				"{\"name\":\"Moto\",\"id\":25,\"category\":\"mobile\",\"price\":500},\r\n" + 
				"{\"name\":\"Celkon\",\"id\":26,\"category\":\"mobile\",\"price\":1000},\r\n" + 
				"{\"name\":\"Nokia\",\"id\":27,\"category\":\"mobile\",\"price\":1300},\r\n" + 
				"{\"name\":\"Asus\",\"id\":28,\"category\":\"mobile\",\"price\":11000},\r\n" + 
				"{\"name\":\"Gionee\",\"id\":29,\"category\":\"mobile\",\"price\":13000},\r\n" + 
				"{\"name\":\"Karbon\",\"id\":30,\"category\":\"mobile\",\"price\":120}\r\n" + 
				"\r\n" + 
				"]";
		
		
		System.out.println("AjaxTest...P1111");
		System.out.println(name);
		out.println(name);
	}

}
