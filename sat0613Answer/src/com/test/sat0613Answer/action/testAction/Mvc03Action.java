package com.test.sat0613Answer.action.testAction;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.sat0613Answer.action.Action;

public class Mvc03Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(request.getParameter("today"));
		
		BufferedReader br = request.getReader();
		System.out.println(br.readLine());
		
		RequestDispatcher dis = request.getRequestDispatcher("mvc03_2.jsp");
		dis.forward(request, response);
		
	}

}
