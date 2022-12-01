package com.javab.bean;
import java.sql.*;

public class User {
private int id;
private String name,email,password,contact,country,profile;
private String date;
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
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }



}
