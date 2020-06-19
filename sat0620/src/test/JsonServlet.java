package test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/json")
public class JsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public JsonServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		
		System.out.println(request.getParameter("name"));
		
		String string =
				"{\"name\" : \"홍길동\",\"age\" : \"19\",\"address\" : \"한양\"}";
	
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter pw = response.getWriter();
		pw.println(string);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		
		
		// getParameter와 getReader를 같이 사용할 수 없다.(하나를 쓰는 순간 파싱이 되버림)
		
//		 System.out.println(request.getParameter("cmd"));
		
		BufferedReader br = request.getReader(); // JSON.stringify(객체)를 이용해서 받을때, 문자열
		String input = null;
		System.out.println(input = br.readLine());
		
		Gson gson = new Gson();
		
		Name test1 = gson.fromJson(input, Name.class);
		
		System.out.println("자바객체" + test1.getName());
		
		
		
		
		
		String string =
				"{\"name\" : \"홍길동\",\"age\" : \"19\",\"address\" : \"한양\"}";
	
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter pw = response.getWriter();
		pw.println(string);
	}

}
