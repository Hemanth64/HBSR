package com.hbsr.springmvc.dao;

import java.util.List;

import com.hbsr.springmvc.model.Icd10Disc;

public interface SearchDao {
	
	List<Icd10Disc> searchIcd10Disc(String desc);

}
