package com.entitys;

public class Client {

	    private long id;
	    private String name;
	    private long userId;
	    private int companyId;
	    private String email;
	    private String phone;
		public Client(long id, String name, long userId, int companyId, String email, String phone) {
			super();
			this.id = id;
			this.name = name;
			this.userId = userId;
			this.companyId = companyId;
			this.email = email;
			this.phone = phone;
		}
		public long getId() {
			return id;
		}
		public void setId(long id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public long getUserId() {
			return userId;
		}
		public void setUserId(long userId) {
			this.userId = userId;
		}
		public int getCompanyId() {
			return companyId;
		}
		public void setCompanyId(int companyId) {
			this.companyId = companyId;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		@Override
		public String toString() {
			return "Client [id=" + id + ", name=" + name + ", userId=" + userId + ", companyId=" + companyId
					+ ", email=" + email + ", phone=" + phone + "]";
		}
	    
	    

	}
