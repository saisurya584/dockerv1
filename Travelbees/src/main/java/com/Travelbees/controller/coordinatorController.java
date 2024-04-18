package com.Travelbees.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class coordinatorController {
	
    @RequestMapping("/Rc")
	public String reg()
	{
		return"login/create3";
	}
   
}
