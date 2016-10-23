package com.lviv.vik;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewWordController{
	
	@RequestMapping(value = "api/word")
	public void generateNewWord(){
		List <String> words = new ArrayList<String>(){{
			add("Table");
			add("Computer");
		}};
		//return new AjaxResponseBody();
	}
	
	private String getWord (int i){
		List <String> words = new ArrayList<String>(){{
			add("Table");
			add("Computer");
			add("Dog");
			add("Reach agreement");
		}};
		return words.get(i);
	}
	
	
}