package com.test.sat0613Answer.action.testAction;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.sat0613Answer.action.Action;

public class Ajax7Action implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		BufferedReader br = request.getReader();
		
		System.out.println(br.readLine());
		
		System.out.println(request.getParameter("name"));
//		
//		PrintWriter pw = response.getWriter();
//		
//		pw.println("ajaxTest4return");
		
	}

}
