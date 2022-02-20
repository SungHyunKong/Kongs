package com.ts.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.PayDAO;
import com.ts.model.PayVO;

public class PayListController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			PayDAO dao = new PayDAO();
			List<PayVO> list = dao.payList();
			request.setAttribute("list", list);
			
		return "pay";
	}

}
