package com.yedam.qna.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.yedam.common.Control;
import com.yedam.qna.domain.QCommentVO;
import com.yedam.qna.service.QCommentService;
import com.yedam.qna.service.QCommentServiceImpl;

public class ModifyQCControl implements Control {

	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		QCommentVO vo = new QCommentVO();
//		vo.setCommentCT(req.getParameter("String"));
//		vo.set(Integer.parseInt(req.getParameter("rid")));
//		System.out.println(req.getParameter("reply"));
//		System.out.println(Integer.parseInt(req.getParameter("rid")));
//		
//		
//		ReplyService service = new ReplyServiceImpl();
//		System.out.println(vo);
//		boolean result= service.modifyReply(vo);
//		System.out.println(result);
//		// search.
//		String json = "";
//		
//		Map<String, Object> map = new HashMap<>();
//		
//		if(result) {
//			vo = service.getReply(vo.getReplyId());
//			map.put("retCode", "Success");
//			map.put("data", vo);
//		}else {
//			map.put("retCode","Fail");
//		}
//		Gson gson = new GsonBuilder().create();//gson 객체
//		json = gson.toJson(map);
//	
//		return json + ".json";
		return null;

	}

}