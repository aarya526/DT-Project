package com.monk.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="customer")
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotNull(message="Please Enter Name")
	@Size(min=5,message="Please type atleast 5 characters")
	@Column(name="name")
	private String name;
	
	@NotNull(message="Please Enter SignIn ID")
	@Size(min=5,message="Please type atleast 5 characters")
	@Column(name="signin")
	private String signin;
	
	@Pattern(regexp=".+@.+\\..+", message="Wrong email!")
	@Column(name="email")
	private String email;
	
	@NotNull(message="Please Enter Password")
	@Size(min=5,message="Please type atleast 5 characters")
	@Column(name="password")
	private String password;
	
	@NotNull(message="Please Enter ContactNo")
	@Pattern(regexp="[0-9]+", message="Enter Numeric values")
	@Column(name="contactno")	
	private String contactno;
	
	private String role= "USER";
	
	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@NotEmpty(message="Please Enter Address")
	@Column(name="address")
	private String address;
	
//	private String role = "ROLE_USER";
//	
//	public String getRole() {
//		return role;
//	}

//	public void setRole(String role) {
//		this.role = role;
//	}

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

	public String getSignin() {
		return signin;
	}

	public void setSignin(String signin) {
		this.signin = signin;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContactno() {
		return contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

//	public BillingAddress getBillingAddress() {
//		return billingAddress;
//	}
//
//	public void setBillingAddress(BillingAddress billingAddress) {
//		this.billingAddress = billingAddress;
//	}
//
//	public ShippingAddress getShippingAddress() {
//		return shippingAddress;
//	}
//
//	public void setShippingAddress(ShippingAddress shippingAddress) {
//		this.shippingAddress = shippingAddress;
//	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	//


	
}
