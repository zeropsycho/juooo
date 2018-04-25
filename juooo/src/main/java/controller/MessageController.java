package controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pojo.J_Message;
import service.MessageService;
import service.impl.MessageServiceImpl;

@Controller
@RequestMapping(value="/message")
public class MessageController{
	
	@Resource
	@Qualifier("messageService")
	private MessageService messageService;
	
	@RequestMapping(value="/select")
	public String getMessageList(Model model) {
		List<J_Message> mList = messageService.getMList();
		model.addAttribute("mList", mList);
		return "forward:/index.jsp";
	}
	
	@RequestMapping(value="/selectnews")
	public String getMList(J_Message m, Model model) {
		List<J_Message> mList = messageService.findMessage(m);
		model.addAttribute("mList", mList);
		return "news/newslist";
	}
}
