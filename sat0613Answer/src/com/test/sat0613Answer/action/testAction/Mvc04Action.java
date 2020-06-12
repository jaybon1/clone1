package com.test.sat0613Answer.action.testAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.sat0613Answer.action.Action;

public class Mvc04Action implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		session.setAttribute("today", "saturday");
		
		
		RequestDispatcher dis = request.getRequestDispatcher("mvc04_2.jsp");
		dis.forward(request, response);
		
	}

}
