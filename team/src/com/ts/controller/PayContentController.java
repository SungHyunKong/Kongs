package com.ts.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.PayDAO;
import com.ts.model.PayVO;

public class PayContentController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int pay_code = Integer.parseInt(request.getParameter("pay_code"));
		PayDAO dao = new PayDAO();
		PayVO vo = dao.payContent(pay_code);
		request.setAttribute("vo", vo);
		return "payContent";	
		
	}

}
