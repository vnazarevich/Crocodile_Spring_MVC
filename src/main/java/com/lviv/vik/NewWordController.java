package com.lviv.vik;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class NewWordController{
	
	@ResponseBody
	@RequestMapping(value = "api/word")
	public String generateNewWord(@RequestBody String s){
		System.out.println("generateNewWord()");
		int i = new Random().nextInt(3);
		//return s;
		return getWord(i);
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