package com.lviv.vik.models;

import java.util.Map;

public class Word {
	private int level;
	private int id;
	private Map <String, Translation> translation;
	
	static class Translation {
		String wordName;
		String wordDescription;
	}

}
