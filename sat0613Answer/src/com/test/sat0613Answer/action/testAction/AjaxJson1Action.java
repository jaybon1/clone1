package com.test.sat0613Answer.action.testAction;

import java.io.BufferedReader;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.sat0613Answer.action.Action;

public class AjaxJson1Action implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		BufferedReader br = request.getReader();
		
		String input = null;
		
		StringBuilder sb = new StringBuilder();
		
		while ((input = br.readLine()) != null) {
			sb.append(input);
		}
		
		System.out.println(sb.toString());
		
		
		
		

		
	}

}
