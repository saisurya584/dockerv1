package com.Travelbees.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.Travelbees.Entity.Navigator;
import com.Travelbees.Entity.Tour;
import com.Travelbees.repository.NavigatorRepository;
import com.Travelbees.repository.TourRepository;

@Controller
public class NavigatorController {
	@Autowired
	private NavigatorRepository nr;
	@Autowired
    private TourRepository tr;
	
	@RequestMapping("/regis")
	public String regNav()
	{
		return "login/create2";
	}
	
	@RequestMapping("/forgetp")
	public String forget()
	{
		return "login/forget";
	}
	
	@RequestMapping("/sigin")
	public String save(@ModelAttribute("Navigator") Navigator navi)
	{
		nr.save(navi);
		return "login/loginN";
	}
   
	@RequestMapping("/loginnav")
	public String verifyLogin(@RequestParam("email") String email,@RequestParam("password") String password,Model model)
	{  
		//System.out.println(email);
		//System.out.println(password);
		try {
		  Navigator guide = nr.findByEmail(email);
	//	System.out.println(guide.getEmail());
	//	System.out.println(guide.getPassword());
		if(guide.getEmail().equals(email) && guide.getPassword().equals(password) ) {
				  
			model.addAttribute("email", guide.getEmail());
			
                 return"login/getDetails";
       
		   }
		}
		catch(Exception e)
		{
			model.addAttribute("msg", "Invaild Password/Email");
		}
		return"login/loginN";
	}
	@RequestMapping("/check")
	public String getDetails(@RequestParam("email") String email,Model model)
	{
		Navigator find = nr.findByEmail(email);
		 List<Tour> finds= tr.findByNavigatorId(find.getId());
		 System.out.println(finds);
		 model.addAttribute("mm", finds);
		//System.out.println(email);
		return "login/final";
	}
    
}
