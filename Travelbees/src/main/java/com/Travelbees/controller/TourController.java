package com.Travelbees.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Travelbees.Entity.Tour;
import com.Travelbees.repository.TourRepository;

@Controller
public class TourController {
	@Autowired
	private TourRepository tr;
	
	@RequestMapping("/sigin1")
	private String saveDetails(@ModelAttribute("Tour") Tour tour) {
		tr.save(tour);
		
		return "login/last";
	}

}
