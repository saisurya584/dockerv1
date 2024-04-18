package com.Travelbees.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.Travelbees.Entity.Navigator;
import com.Travelbees.Entity.Tour;
import com.Travelbees.Entity.Tourist;

import com.Travelbees.repository.NavigatorRepository;
import com.Travelbees.repository.TourRepository;
import com.Travelbees.service.TouristService;

@Controller
public class TouristController {
	@Autowired
	private TouristService ts;
	@Autowired
	private NavigatorRepository nr;
	@Autowired
	private TourRepository tor;
	
	@RequestMapping("/home")
	public String Home()
	{
		return "home";
	}
   
	@RequestMapping("/login")
	public String show()
	{
		return"login/loginT";
	}
	
	@RequestMapping("/login1")
	public String show1()
	{
		return"login/loginN";
	}
	
	@RequestMapping("/login2")
	public String show2()
	{
		return"login/loginC";
	}
	
	@RequestMapping("/contact")
	public String contact()
	{
		return"login/contact";
	}
	@RequestMapping("/register")
	public String reg()
	{
	  return "login/create1";
	}
	
	
	@RequestMapping("/forget")
	public String forget()
	{
	  return "login/forget";
	}
	@RequestMapping("/regi")
	public String regist(@ModelAttribute("Tourist") Tourist tour)
	{
		ts.save(tour);
		return "login/loginT";
	}
	
	
	@RequestMapping("/logint")
	public String verifyLogin(@RequestParam("email") String email,@RequestParam("password") String password,Model model)
	{  
		//System.out.println(password);
		//System.out.println(email);
		
		try {
		  Tourist user = ts.check(email);
		
		
		if(user.getEmail().equals(email)) {
			
			if(user.getPassword().equals(password)) {
			model.addAttribute("de", user.getEmail());
			
                 return"login/search";
			}
			else
			{
				model.addAttribute("msg", "Invaild Password");
			}
     	   }
		}
		catch(Exception e)
		
		{
			model.addAttribute("msg", "Invaild Email");
		}
    	return"login/loginT";
	}
	
	@RequestMapping("/search")
	public String searchPlace(@RequestParam("search") String search,Model model ,@RequestParam("email") String email)
	{
		//System.out.println(search);
	   if(search.equalsIgnoreCase("wayanad"))
		{
		   
		   List<Navigator> find= nr.findByLocation(search);
	       model.addAttribute("ffl", find);
	        Tourist check = ts.check(email);	        
	        model.addAttribute("check", check.getEmail());
		return "places/wayanad";
	}
		else if(search.equalsIgnoreCase("araku"))
		{
			List<Navigator> find= nr.findByLocation(search);
			model.addAttribute("ffl", find);
	        Tourist check = ts.check(email);	        
	        model.addAttribute("check", check.getEmail());
			return "places/araku";
		}
		else if(search.equalsIgnoreCase("goa"))
		{
			List<Navigator> find= nr.findByLocation(search);
			model.addAttribute("ffl", find);
	        Tourist check = ts.check(email);	        
	        model.addAttribute("check", check.getEmail());
			return "places/goa";
		}
		else if(search.equalsIgnoreCase("coorg"))
		{
			List<Navigator> find= nr.findByLocation(search);
			model.addAttribute("ffl", find);
	        Tourist check = ts.check(email);	        
	        model.addAttribute("check", check.getEmail());
			return "places/coorg";
		}
		else if(search.equalsIgnoreCase("ladakh"))
		{
			List<Navigator> find= nr.findByLocation(search);
			model.addAttribute("ffl", find);
	        Tourist check = ts.check(email);	        
	        model.addAttribute("check", check.getEmail());
			return "places/ladakh";
		}
		else
     	{
			model.addAttribute("msg", "Not Found");
		}
		return "search";
	}
	
	@RequestMapping("/select")
	public String getDetailGuide(@RequestParam("NavigatorId")long id,Model model,@RequestParam("email") String email)
	{
   	 //System.out.println(id);
   	 //System.out.println(email);
    	 Navigator referenceById = nr.getReferenceById(id);
   	     Tourist check = ts.check(email);
   	     
    	 model.addAttribute("rr", check);
    	 model.addAttribute("ms",referenceById );
    	return "places/guideAndTourist";
	}
	@RequestMapping("/myBooking")
   public String MyBook(@RequestParam("email") String email,Model model)
   {
		//System.out.println(email);
		Tourist check = ts.check(email);
		//System.out.println(check);
		List<Tour> find = tor.findByTouristId(check.getId());
		//System.out.println(find);
		model.addAttribute("ff", find);
	   return "login/booking";
   }
	  @RequestMapping("/forgetPassword")
	 public String forgetPassword(@RequestParam("email") String email,Model model) 
	 {   
		  try {
		  Tourist user = ts.check(email);
			
			 if(user!=null)
			 {
				 model.addAttribute("re", user.getEmail());
				 return "login/Conform";
			 }
		  }
	    catch(Exception e)
		     {
			 model.addAttribute("sai","Email is not registed");
		     }
		 return "login/forget";
	 }
	
	 @RequestMapping("/conform")
	 public String Conform(@RequestParam("email") String email,@RequestParam("password") String password,@RequestParam("conformPassword") String conform,Model model)
	 {  
		 
		      
				Tourist user = ts.check(email);
		     
				if(password.equals(conform)==true) {
					
					user.setPassword(password);
					ts.save(user);
					
					model.addAttribute("b", "sucessfully change ");
					
		                 return"login/loginT";
		        
				}	
				else
				{
					model.addAttribute("np", "password is not matching");
				}
			
				
	          
		    	return"login/Conform";
			}
	 
}
