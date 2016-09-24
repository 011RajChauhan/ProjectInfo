package com.proj.models;

import java.util.List;

import javax.validation.constraints.Min;

public class Project {
private int projectId;
	
	
	private String name;
	
	@Min(value=3,message="description is too short")
	private String description;
	
	private Sponsor sponsor;
	
	private int authorizedHours;	
	
	private int authorizedFunds;
	
	private String year;
	
	private boolean special;
	
	private String type;
	
	private List<String>pointOfContact;
	
	public List<String> getPointOfContact() {
		return pointOfContact;
	}

	public void setPointOfContact(List<String> pointOfContact) {
		this.pointOfContact = pointOfContact;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getProjectId() {
		return projectId;
	}

	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Sponsor getSponsor() {
		return sponsor;
	}

	public void setSponsor(Sponsor sponsor) {
		this.sponsor = sponsor;
	}

	public int getAuthorizedHours() {
		return authorizedHours;
	}

	public void setAuthorizedHours(int k) {
		this.authorizedHours = k;
	}

	public int getAuthorizedFunds() {
		return authorizedFunds;
	}

	public void setAuthorizedFunds(int j) {
		this.authorizedFunds = j;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public boolean isSpecial() {
		return special;
	}

	public void setSpecial(boolean special) {
		this.special = special;
	}


	@Override
	public String toString() {
		return "Project [projectId=" + projectId + ", name=" + name + ", description=" + description + ", sponsor="
				+ sponsor + ", authorizedHours=" + authorizedHours + ", authorizedFunds=" + authorizedFunds + ", year="
				+ year + ", special=" + special + ", type=" + type + ", pointOfContact=" + pointOfContact + "]";
	}
}
