package com.lviv.vik;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GameController {
	@RequestMapping("game")
	public String game(Model model){
		model.addAttribute("lable", "Crocodile");
		return "game";
	}
	
}
