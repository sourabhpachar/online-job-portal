//User story 1 (Task 4)
package com.cts.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="userdetails")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String username;
	private String firstname;
	private String lastname;
	private String email;
	private String password;
	private int mblnumber;
	private String qualification;
	private int exp;
	private int age;
	private String address;
	private String country;
	private String state;
	private int postcode;
	
	
	public User() {
	
	}
	public User(String username, String firstname, String lastname, String email, String password, int mblnumber,
			String qualification, int exp, int age, String address, String country, String state, int postcode) {
		super();
		this.username = username;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.password = password;
		this.mblnumber = mblnumber;
		this.qualification = qualification;
		this.exp = exp;
		this.age = age;
		this.address = address;
		this.country = country;
		this.state = state;
		this.postcode = postcode;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
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
	public int getMblnumber() {
		return mblnumber;
	}
	public void setMblnumber(int mblnumber) {
		this.mblnumber = mblnumber;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public int getExp() {
		return exp;
	}
	public void setExp(int exp) {
		this.exp = exp;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getPostcode() {
		return postcode;
	}
	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", firstname=" + firstname + ", lastname=" + lastname
				+ ", email=" + email + ", password=" + password + ", mblnumber=" + mblnumber + ", qualification="
				+ qualification + ", exp=" + exp + ", age=" + age + ", address=" + address + ", country=" + country
				+ ", state=" + state + ", postcode=" + postcode + "]";
	}
	
	
}

