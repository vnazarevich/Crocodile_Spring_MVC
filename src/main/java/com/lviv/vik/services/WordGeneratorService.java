package com.lviv.vik.services;

import com.lviv.vik.models.Word;
import com.lviv.vik.models.WordCriteria;

public interface WordGeneratorService {
	 Word generateWord(WordCriteria wordCriteria);
}
