package com.test.sat0613Answer.action.testAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.sat0613Answer.action.Action;

public class Mvc02Action implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(request.getParameter("today"));
		
		RequestDispatcher dis = request.getRequestDispatcher("mvc02_2.jsp");
		dis.forward(request, response);
		
	}

}
