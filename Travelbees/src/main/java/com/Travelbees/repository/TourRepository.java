package com.Travelbees.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Travelbees.Entity.Tour;

public interface TourRepository extends JpaRepository<Tour, Long> {
	
	
	public List<Tour> findByNavigatorId(long navigatorId);
	
	
	public List<Tour> findByTouristId(Long touristId);

}
