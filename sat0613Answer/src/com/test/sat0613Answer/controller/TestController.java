package com.test.sat0613Answer.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.sat0613Answer.action.Action;
import com.test.sat0613Answer.action.testAction.Ajax3Action;
import com.test.sat0613Answer.action.testAction.Ajax4Action;
import com.test.sat0613Answer.action.testAction.Ajax7Action;
import com.test.sat0613Answer.action.testAction.Ajax8Action;
import com.test.sat0613Answer.action.testAction.AjaxJson1Action;
import com.test.sat0613Answer.action.testAction.AjaxJson2Action;
import com.test.sat0613Answer.action.testAction.Mvc01Action;
import com.test.sat0613Answer.action.testAction.Mvc02Action;
import com.test.sat0613Answer.action.testAction.Mvc03Action;
import com.test.sat0613Answer.action.testAction.Mvc04Action;
import com.test.sat0613Answer.action.testAction.Mvc05Action;

@WebServlet("/test")
public class TestController extends HttpServlet {
	private final static String TAG = "testController : ";
	private static final long serialVersionUID = 1L;
       
    public TestController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cmd = request.getParameter("cmd");
		System.out.println(TAG+"router : "+cmd);
		Action action = router(cmd);
		action.execute(request, response);
		
		
	}  
	
	public Action router(String cmd) {
		if(cmd.equals("mvc01")) {
			return new Mvc01Action();
		} else if(cmd.equals("mvc02")) {
			return new Mvc02Action();
		} else if(cmd.equals("mvc03")) {
			return new Mvc03Action();
		} else if(cmd.equals("mvc04")) {
			return new Mvc04Action();
		} else if(cmd.equals("mvc05")) {
			return new Mvc05Action();
		} else if(cmd.equals("ajax3")) {
			return new Ajax3Action();
		}else if(cmd.equals("ajax4")) {
			return new Ajax4Action();
		}else if(cmd.equals("ajax7")) {
			return new Ajax7Action();
		}else if(cmd.equals("ajax8")) {
			return new Ajax8Action();
		}else if(cmd.equals("ajaxJson1")) {
			return new AjaxJson1Action();
		} else if(cmd.equals("ajaxJson2")) {
			return new AjaxJson2Action();
		}
		return null;
	}
	

}