package com.proj.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.proj.models.Project;
import com.proj.models.Sponsor;
import com.proj.services.ProjectServices;

@Controller
public class HomeController {
	
	@Autowired
	ProjectServices projectService;
	
	/*FlashAttributes can be used here to paas the recently created Object
	benfifit is there is no need to call any service like projectservie
	and we can directly palce object inside the flash attribute that goes in a short session
	and can fetch that object in controller method, also request param will not be seen 
	in the url but as soon as it render the object via a view , the
	object gets poped out from the session.*/
	
	/*@RequestMapping(value="/")
	 * method working for flashAttributes
	public String home(Model model,@ModelAttribute("project")Project project){
		model.addAttribute("currentProject",project);
		return "home";
	}*/
	@RequestMapping(value="/",params={"projectId"})
	public String goHomeAgain(Model model,@RequestParam("projectId")int projectId){
		model.addAttribute("currentProject",this.projectService.find(projectId));
		return "home";
		
	}
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String home(Model model){
		Project project = new Project();
		project.setProjectId(00001);
		project.setName("Reconcilation Engine");
		project.setSponsor(new Sponsor("HCL TECHNOLOGIES LTD.","WWW.HCLTECH.COM","HCL CARE"));
		project.setDescription("This is a simple project sponsored by HCL");
		model.addAttribute("currentProject",project);
		//return "welcome";
		return "home";
	}
}
