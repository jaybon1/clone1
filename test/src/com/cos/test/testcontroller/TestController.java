package com.cos.test.testcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.test.Action.Action;
import com.cos.test.Action.testAction.UsersJoinAction;


@WebServlet("/test")
public class TestController extends HttpServlet {

	private static final String TAG = "TestController : ";

	private static final long serialVersionUID = 1L;

	public TestController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	// 어떠한 형식의 요청이 오든 여기서 처리
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cmd = request.getParameter("cmd");

		System.out.println(TAG + "doProcess : " + cmd);

		Action action = router(cmd);
		action.execute(request, response);

	}

	public Action router(String cmd) {

		if (cmd.equals("inter")) {
			return new UsersJoinAction();
		} 
		return null;

	}
}