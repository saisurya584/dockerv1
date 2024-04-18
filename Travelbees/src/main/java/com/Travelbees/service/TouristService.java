package com.Travelbees.service;

import java.util.Optional;

import com.Travelbees.Entity.Tourist;

public interface TouristService {

	void save(Tourist tour);

	Tourist check(String email);

	

}
