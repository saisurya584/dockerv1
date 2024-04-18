package com.Travelbees.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Travelbees.Entity.Navigator;

public interface NavigatorRepository extends JpaRepository<Navigator, Long> {

 public  Navigator findByEmail(String email);

public List<Navigator> findByLocation(String search);
}
