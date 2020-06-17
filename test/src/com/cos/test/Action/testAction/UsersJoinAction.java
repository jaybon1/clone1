package com.cos.test.Action.testAction;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.test.Action.Action;
import com.cos.test.inter.ApiExamTranslateNmt;

public class UsersJoinAction implements Action  {

	// 컨트롤러가 해야될 일들을 위임해서 다른 클래스가 일을 하게 하는 것을 팩토리패턴이라고 한다
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        String clientId = request.getParameter("ClientId");
        String clientSecret = request.getParameter("ClientSecret");

        String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
        String text = request.getParameter("text");
        String source = request.getParameter("source");
        String target = request.getParameter("target");
        
        try {
            text = URLEncoder.encode(text, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("인코딩 실패", e);
        }

        Map<String, String> requestHeaders = new HashMap<>();
        requestHeaders.put("X-Naver-Client-Id", clientId);
        requestHeaders.put("X-Naver-Client-Secret", clientSecret);

        String responseBody = ApiExamTranslateNmt.post(apiURL, requestHeaders, text, source, target);

//        System.out.println(responseBody);
        
        response.setCharacterEncoding("utf-8");
        PrintWriter pw = response.getWriter();
        pw.println(responseBody);
		
	}
	
}
