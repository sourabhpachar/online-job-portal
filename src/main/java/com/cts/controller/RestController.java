package com.cts.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.model.Postjob;
import com.cts.model.User;
import com.cts.service.PostjobService;
import com.cts.service.UserService;

@org.springframework.web.bind.annotation.RestController


public class RestController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private PostjobService postjobService;
	
	@GetMapping("/homewelcome")
	public String hello() {
		return "This is Home page";
	}
	
	//@GetMapping("/saveuser")
	//public String saveUser(@RequestParam String username,@RequestParam String firstname,@RequestParam String lastname,@RequestParam int age,@RequestParam String password) {
	//	User user=new User(username,firstname,lastname,age,password);
	//	userService.saveMyUser(user);
	//	return "User Saved";
	// }
	
	@GetMapping("/postjob")
	public String postJob(@RequestParam String companyname,@RequestParam String jobdescription,@RequestParam  String jobskills,@RequestParam int jobexp,@RequestParam String jobqual,
			@RequestParam String jobtype,@RequestParam double jobsal,@RequestParam String jobloc,@RequestParam  String contactno,@RequestParam  String category) {
		Postjob postjob=new Postjob(companyname,jobdescription,jobskills,jobexp,jobqual,jobtype,jobsal,jobloc,contactno,category);
		postjobService.postMyjob(postjob);
		
		return "User Saved";
	}
	
}

