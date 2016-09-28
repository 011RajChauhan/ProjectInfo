package com.proj.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.models.Project;
import com.proj.models.Sponsor;

@Controller
public class HomeController {
	@RequestMapping(value="/")
	public String home(Model model){
		Project project = new Project();
		project.setName("Reconcilation Engine");
		project.setSponsor(new Sponsor("HCL TECHNOLOGIES LTD.","WWW.HCLTECH.COM","HCL CARE"));
		project.setDescription("This is a simple project sponsored by HCL");
		model.addAttribute("currentProject",project);
		return "welcome";
	}
}
