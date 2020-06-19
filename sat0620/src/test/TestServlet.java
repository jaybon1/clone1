package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/move")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TestServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doProcess(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("cmd").equals("empty")) {
			
			PrintWriter pw = response.getWriter();
			pw.println("<script> alert(\"테스트\"); </script>");
			
			// 내용이 ???로 나온다.
			// alert창이 뜨는 것으로 컨텐트 타입은 text/html이 디폴트라는 것을 알 수 있다.
			
		} else if(request.getParameter("cmd").equals("noType")) {
			
			response.setCharacterEncoding("utf-8");
			PrintWriter pw = response.getWriter();
			pw.println("<script> alert(\"테스트\"); </script>");
			
			// 글자가 깨져서 나온다.
			// alert창이 뜨는 것으로 컨텐트 타입은 text/html이 디폴트라는 것을 알 수 있다.
			
		} else if(request.getParameter("cmd").equals("html")) {
			
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			PrintWriter pw = response.getWriter();
			pw.println("<script> alert(\"테스트\"); </script>");
			
			// 인코딩과 컨텐트 타입을 모두 기입하면 원하는 결과가 나온다.
			 
		} else if(request.getParameter("cmd").equals("text")) {
			
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/plain; charset=utf-8");
			PrintWriter pw = response.getWriter();
			pw.println("<script> alert(\"테스트\"); </script>");
			
			// 컨텐트 타입을 text/plain으로 하면 문자열 그대로 출력된다.
			
		} else if(request.getParameter("cmd").equals("json")) {
			
			response.setCharacterEncoding("utf-8");
			response.setContentType("application/json; charset=utf-8");
			PrintWriter pw = response.getWriter();
			pw.println("{\"name\" : \"안녕\"}");
			
			// 제이슨 형식
			
		}

	}

}
