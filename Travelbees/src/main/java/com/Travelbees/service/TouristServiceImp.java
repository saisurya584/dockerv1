package com.Travelbees.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Travelbees.Entity.Tourist;
import com.Travelbees.repository.TouristRepository;

@Service
public class TouristServiceImp implements TouristService {
	
	@Autowired
	private TouristRepository tr;

	@Override
	public void save(Tourist tour) {
		
		tr.save(tour);
		
	}

	@Override
	public Tourist check(String email) {
		
		Tourist find = tr.findByEmail(email);
		 return find;
	}

}
