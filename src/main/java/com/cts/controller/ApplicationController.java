package com.cts.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.model.Postjob;
import com.cts.model.User;
import com.cts.service.PostjobService;
import com.cts.service.UserService;

@Controller
public class ApplicationController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private PostjobService postjobService;
	
	
	
	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode","MODE_HOME");
		return "welcomepage";
	}
	
	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode","MODE_REGISTER");
		return "welcomepage";
	}
	
	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute User user,BindingResult bindingResult,HttpServletRequest request) {
		userService.saveMyUser(user);
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	
	@GetMapping("/show-users")
	public String showAllUser(HttpServletRequest request) {
		request.setAttribute("users",userService.showAllUser());
		request.setAttribute("mode","ALL_USERS");
		return "welcomepage";
	}
	
	@GetMapping("/myprofile")
	public String myProfile(HttpServletRequest request) {
		request.setAttribute("users",userService.showAllUser());
		request.setAttribute("mode","ALL_USERS");
		return "homepage";
	}
	
	@RequestMapping("/delete-user")
	public String deleteUser(@RequestParam int id,HttpServletRequest request) {
		userService.deleteMyUser(id);
		request.setAttribute("users",userService.showAllUser());
		request.setAttribute("mode","ALL_USERS");
		return "welcomepage";
		
	}
	
	@RequestMapping("/edit-user")
	public String editUser(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("user", userService.editUser(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "welcomepage";
	}
	
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcomepage";
	}
	
	@RequestMapping ("/login-user")
	public String loginUser(@ModelAttribute User user, HttpServletRequest request) {
		if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword())!=null) {
			return "homepage";
		}
		else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage";
			
		}
	}
	
	@RequestMapping("/adlogin")
	public String adminlogin(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_ADLOGIN");
		return "welcomepage";
	}
	
	@RequestMapping ("/admin-login")
	public String adminloginUser(@ModelAttribute User user, HttpServletRequest request) {
		if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword())!=null) {
			return "postjob";
		}
		else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_ADLOGIN");
			return "welcomepage";
			
		}
	}
	
	@RequestMapping("/postjobpage")
	public String postjobpage(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_POSTJOB");
		return "postjob";
	}
	
	@PostMapping("/save-postedjobs")
	public String postalljobs(@ModelAttribute Postjob postjob,BindingResult bindingResult ,HttpServletRequest request) {
		postjobService.postMyjob(postjob);
		request.setAttribute("mode", "MODE_ADMINHOME");
		return "postjob";
	}
	
	@GetMapping("/show-alljobs")
	public String showallMyjobs(HttpServletRequest request) {
		request.setAttribute("alljobs",postjobService.showAlljobs());
		request.setAttribute("mode","MODE_POSTEDJOB");
		return "postjob";
	}
	
	
	
	
	@RequestMapping("/delete-job")
	public String deleteMyJob(@RequestParam int jobid,HttpServletRequest request) {
		postjobService.deleteMyJob(jobid);
		request.setAttribute("alljobs",postjobService.showAlljobs());
		request.setAttribute("mode","MODE_POSTEDJOB");
		return "postjob";
		
	}
	
	@RequestMapping("/edit-job")
	public String editJob(@RequestParam int jobid,HttpServletRequest request) {
		request.setAttribute("postjob", postjobService.editJob(jobid));
		request.setAttribute("mode", "MODE_UPDATEJOB");
		return "postjob";
	}
	
	@GetMapping("/viewapply")
	public String viewapplyjobs(HttpServletRequest request) {
		request.setAttribute("alljobs",postjobService.showAlljobs());
		request.setAttribute("mode","MODE_VIEWAPPLY");
		return "homepage";
	}
	
	@RequestMapping("/apply-job")
	public String applydeleteMyJob(HttpServletRequest request) {
		request.setAttribute("alljobs",postjobService.showAlljobs());
		request.setAttribute("mode","MODE_APPLIEDJOBS");
		return "homepage";
		
	}
	
	@RequestMapping("/logout")
	public String logout() {
		return "welcomepage";
	}
	
	
	

}
