package com.blisgo.client.service;

import java.util.ArrayList;

import com.blisgo.client.dto.DictionaryDTO;
import com.blisgo.client.dto.GuideDTO;

public interface DictionaryService {

	// 사전 조회 메서드
	ArrayList<DictionaryDTO> searchDictionary(DictionaryDTO search_dic);

	// 물품 상세 내용 보는 메서드
	DictionaryDTO productInfo(int dic_no);

	// 분리배출 가이드 출력 메서드
	ArrayList<GuideDTO> printGuide(String getCategory_mid);

	// 연관 물품 나열 메서드
	ArrayList<DictionaryDTO> relatedProduct(ArrayList<String> getCategory_mid);

	// 물품 더보기 메서드
	ArrayList<DictionaryDTO> productLoadMore(DictionaryDTO search_dic);
	
	// 별점 매기는 메서드
	int getStar(int dic_no);
		
	// 조회수 추가 메서드
	void countHit(int dic_no);
	
}
