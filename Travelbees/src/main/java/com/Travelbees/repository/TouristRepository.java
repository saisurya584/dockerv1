package com.Travelbees.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import com.Travelbees.Entity.Tourist;

public interface TouristRepository extends JpaRepository<Tourist, Long> {

	Tourist findByEmail(String email);
}
