package com.entitys;

import java.util.List;

public class Company {
	 private int id;
	    private String name;
	    private List<User> users; // Inverse relationship
	    private double revenue;
	    private String industry;
	    // Constructors, getters, setters
		public Company(int id, String name, List<User> users) {
			super();
			this.id = id;
			this.name = name;
			this.users = users;
			this.revenue=revenue;
			this.industry=industry;
		}
		
		
		
		public int getId() {
			return id;
		}



		public void setId(int id) {
			this.id = id;
		}



		public String getName() {
			return name;
		}



		public void setName(String name) {
			this.name = name;
		}



		public List<User> getUsers() {
			return users;
		}



		public void setUsers(List<User> users) {
			this.users = users;
		}



		public double getRevenue() {
			return revenue;
		}



		public void setRevenue(double revenue) {
			this.revenue = revenue;
		}



		public String getIndustry() {
			return industry;
		}



		public void setIndustry(String industry) {
			this.industry = industry;
		}



		@Override
		public String toString() {
			return "Company [id=" + id + ", name=" + name + ", users=" + users + ", revenue=" + revenue + ", industry="
					+ industry + "]";
		}



}
   

