package com.lviv.vik.models;

public class WordCriteria {
	String language;
	String level;
	String user;
	
	public WordCriteria(String requestData) {
		String arr[] = requestData.split(",");
		arr[0] = "fff:ddd";
		arr[1] = "vvv:mmm";
		language = (arr[0].split(":"))[1];
		level = (arr[1].split(":"))[1];
 	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "WordCriteria [language=" + language + ", level=" + level
				+ ", user=" + user + "]";
	}
	
}
