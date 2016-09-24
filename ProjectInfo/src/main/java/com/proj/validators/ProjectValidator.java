package com.proj.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.proj.models.Project;

public class ProjectValidator implements Validator {

	@Override
	public boolean supports(Class<?> project) {
		/*this argument comes from spring framework which is the controller instance
		needs to check it here for a boolean true for controller instance*/
		
		return Project.class.equals(project);
	}

	@Override
	public void validate(Object projectObj, Errors error) {
		/*validate method is invoked after getting a boolean true from supports for this controller
		regect value is added to the error instance and reprented to view
		using Errors or DataBinding interfaces in controller*/
		
		Project project = (Project)projectObj;
		
		if(project.getName().length()<5){
			error.rejectValue("name","project.name","the name is too short");
		}

	}

}
