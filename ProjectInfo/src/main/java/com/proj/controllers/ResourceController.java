package com.proj.controllers;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.proj.models.Resource;

@Controller
@SessionAttributes("resource")
@RequestMapping(value="/resource")
public class ResourceController {
	List<String>typeList;
	List<String>units;
	List<String>indicators;
	
	/*use of ModelAttribute to add object to the model*/
	
	@ModelAttribute("typeList")
	public List<String> typeList(){
		typeList = new LinkedList<>(Arrays.asList(new String[]{"Material","Staff","Other","Technical Equipment"}));
		return typeList;
	}
	
	/*use of ModelAttribute to add object to the model*/
	
	@ModelAttribute("units")
	public List<String> units(){
		units = new LinkedList<>(Arrays.asList(new String[]{"piece","tons","hours"}));
		return units;
	}
	
	/*use of ModelAttribute to add object to the model*/
	
	@ModelAttribute("indicators")
	public List<String> indicators(){
		indicators=new LinkedList<>(Arrays.asList(new String[]{"Lead Time","Special Rates","Requires Approval"}));
		return indicators;
	}
	
	/*use of ModelAttribute to add Resource Object to the model*/
	@ModelAttribute("resource")
	public Resource resource(){
		System.out.println("adding new resource to the model");
		return new Resource();
	}
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String resourcePage(Model model){
		if(1==1){
			throw new RuntimeException();
		}
		System.out.println("invoking add");
		return "resource_add";
	}
	/*@ExceptinHandler controller for handling exeption for individual controller*/
	@ExceptionHandler(Exception.class)
	public String handleControllerException(HttpServletRequest request){
		return "controller_exception";
	}
	@RequestMapping(value="/review")
	public String reviewResource(@ModelAttribute Resource resource){
		System.out.println("invoking review");
		return "resource_review";
	}
	
	/*controller method to send response in respone body*/
	
	@RequestMapping(value="/request")
	@ResponseBody
	public String requestEmail(@RequestBody String resource){
		//using @RequestBody annotation that uses httpRequest as requestbody call through ajax
		System.out.println(resource);
		return "Email sent succefully";
	}
	@RequestMapping(value="/save")
	public String resourceadd(@ModelAttribute Resource resource,SessionStatus status){
		System.out.println("invoking save");
		System.out.println(resource);
		status.setComplete();
		return "redirect:/resource/add";
	}
}
  