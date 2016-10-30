package com.lviv.vik.models;

public class WordCriteria {
	private String language;
	private Integer level;
	private String user;
	
	/**
	 * parse StringData into new WordCriteria obj
	 * 
	 * @param requestData expected like language=uk&level=1 or language=uk&level=1&user=...
	 */
	public WordCriteria(String requestData) {
		String arr[] = requestData.split("&");
		System.out.println("arr[] : " + arr[0] + ", " + arr[1]);
		language = (arr[0].split("="))[1];
		level = Integer.valueOf((arr[1].split("="))[1]);
 	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
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
