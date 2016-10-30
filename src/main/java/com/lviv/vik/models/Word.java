package com.lviv.vik.models;

import java.util.Map;

public class Word {
	private Integer level;
	private int id;
	private Map <String, Translation> translation;
	
	static class Translation {
		String wordName;
		String wordDescription;
	}

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Map<String, Translation> getTranslation() {
		return translation;
	}

	public void setTranslation(Map<String, Translation> translation) {
		this.translation = translation;
	}
	
	
}
