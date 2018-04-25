package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pojo.J_Message;
import service.MessageService;
import service.impl.MessageServiceImpl;

@Controller
@RequestMapping(value="/test")
public class TestController {
	MessageService ms = new MessageServiceImpl();
	
	@RequestMapping(value="/test")
	public String test(HttpServletRequest request, Model model, J_Message m) {
		String views = null;
		if(request.getParameter("hidden").equals("view")) {
			views = "/all_product/child";
		} else if(request.getParameter("hidden").equals("200")) {
			views = "forward:/WEB-INF/resource/404.html";
		} else if(request.getParameter("hidden").equals("404")) {
			views = "redirect:/index.jsp";
		}
		return views;
		/*List<J_Message> mList = ms.findMessage(m);
		model.addAttribute("mList", mList);
		return "news/newslist";*/
	}
	
	/*@RequestMapping(value="/message")
	public String updateMessage(Model model, MessageServiceImpl m, J_Message me) {
		List<J_Message> messages = m.getMList();
		model.addAttribute("message",messages);
		model.addAttribute("test", "111");
		return "forward:/index.jsp";
	}
	
	/*我的资讯*/
	@RequestMapping(value="/order")
	public String myOrder(Model model, J_Message m) {
		List<J_Message> mList = ms.findMessage(m);
		model.addAttribute("mList", mList);
		return "news/newslist";
	}
}
