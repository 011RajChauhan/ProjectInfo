package com.proj.services;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import com.proj.models.Project;
import com.proj.models.Sponsor;

public class ProjectServices {
List<Project> projects = new LinkedList<Project>();
	public ProjectServices(){
		Project javaProject = createProject(1,"Java Project","HCL Technologies LTD.",new Sponsor("Hcl","hcl.com","hclcare"),100000,1000,"Multi year","1999");
		Project javaScriptProject = createProject(2,"Java Script Project","TCS", new Sponsor("Tcs","tcs.com","tcs care"),105600,1100,"Single Year","2006");
		Project strutsProject = createProject(3,"Struts Project","KMG", new Sponsor("KMG","kmg.com","kmgInfotech"),1056800,1200,"Single Year","2016");
		this.projects.addAll(Arrays.asList(new Project[]{javaProject,javaScriptProject,strutsProject}));
	}
	
	public Project createProject(int i,String name,String description,Sponsor sponsor,int j,int k,String type,String year){
		Project project = new Project();
		project.setProjectId(i);
		project.setName(name);
		project.setSponsor(sponsor);
		project.setDescription(description);
		project.setAuthorizedFunds(j);
		project.setAuthorizedHours(k);
		project.setType(type);
		project.setYear(year);
		
		return project;
	}
	public List<Project> findAll(){
		return projects;
	}

	/*public Project find(Long projectId) {
		return this.projects.stream().filter(p -> {
			return p.getProjectId().equals(projectId);
			}).collect(Collectors.toList()).get(0);
	}*/
	public Project find(int projectId){
		Project project = null;
		for(Project projectLocal:projects){
			if(projectLocal.getProjectId()==projectId){
				project=projectLocal;
			}
		}
		return project;
}
	public void save(Project project){
		projects.add(project);
	}
}
