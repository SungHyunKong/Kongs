package com.ts.frontcontroller;

import java.util.HashMap;

import com.ts.controller.*;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	public HandlerMapping() {
		mappings=new HashMap<String, Controller>();
		mappings.put("/login.do", new MemberTestLoinController());
		mappings.put("/memberInsert.do", new MemberInsertController());
		mappings.put("/Schedule.do", new ScheduleController());
		mappings.put("/worker.do", new WorkerController());
		mappings.put("/workertime.do", new WorkerTimeListController());
		mappings.put("/workerDelete.do", new WorkerDeleteController());
		mappings.put("/workerInsert.do", new WorkerInsertController());
		mappings.put("/workerUpdate.do", new WorkerUpdateController());
		mappings.put("/pay.do", new PayListController());
		mappings.put("/payContent.do", new PayContentController());
	}
	
	public Controller getController(String command) {
		return mappings.get(command);
	}
	
}
