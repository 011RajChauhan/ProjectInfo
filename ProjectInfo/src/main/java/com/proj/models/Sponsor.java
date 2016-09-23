package com.proj.models;

public class Sponsor {
	
	private String email;
	private String contact;
	
	public Sponsor(){}
	
	public Sponsor(String name,String email,String contact){
		this.name=name;
		this.email=email;
		this.contact=contact;
	}
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}

	@Override
	public String toString() {
		return "Sponsor [email=" + email + ", contact=" + contact + ", name=" + name + "]";
	}
	
}
