package com.ts.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import com.ts.controller.Controller;
import com.ts.model.BoardMemberDTO;
import com.ts.model.TestMemberDAO;

public class MemberTestLoinController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String member_id=request.getParameter("member_id");
		String member_pw=request.getParameter("member_pw");
		TestMemberDAO dao = new TestMemberDAO();
		
		BoardMemberDTO dto = dao.login(new BoardMemberDTO(member_id,member_pw));
		
		if(dto == null) {
			return "";
			
		}else {
			request.setAttribute("vo", dto);
			return "main";
		}
		
		
		
		
	}

}
