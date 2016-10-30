package com.lviv.vik.services.imp;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import org.springframework.stereotype.Service;

import com.lviv.vik.models.Word;
import com.lviv.vik.models.WordCriteria;
import com.lviv.vik.services.WordGeneratorService;

@Service
public class WordGeneratorServiceImp implements WordGeneratorService{
	private Set <Word> words;
	private Map <Integer, Set <Word>> wordsByLevels;
	
	/** add words 
	 *  implement initialisation:
	 *  - create wordsByLevels
	 *  ? check if wordsByUserCriteria exist
	 */

	@Override
	public Word generateWord(WordCriteria wordCriteria) {
		List < Word> wordsByUserCriteria = new ArrayList<Word>(wordsByLevels.get(wordCriteria.getLevel()));
		return getRandomWord(wordsByUserCriteria, wordCriteria.getLanguage());
	}

	private Word getRandomWord(List <Word> wordsByUserCriteria, String language) {
		Random rand = new Random();
		int wordPosition = rand.nextInt(wordsByUserCriteria.size());
		return wordsByUserCriteria.get(wordPosition) ;
	}

	private Set<Word> getWordsByUserCriteria(WordCriteria wordCriteria) {
		
		return null;
	}

}
