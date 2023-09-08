package com.ashokit;

import java.io.Serializable;

public class Customer implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String fullname;
	private long mobile;
	private String email;
	
	private int bus_id;
	private String bus_name;
	private String bus_type;
	private String source;
	private String destination;
	private double arrival_time;
	private double departure_time;
	private double price;
	private String duration;
	private String day;
	
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public long getMobile() {
		return mobile;
	}
	public void setMobile(long mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getBus_id() {
		return bus_id;
	}
	public void setBus_id(int bus_id) {
		this.bus_id = bus_id;
	}
	public String getBus_name() {
		return bus_name;
	}
	public void setBus_name(String bus_name) {
		this.bus_name = bus_name;
	}
	public String getBus_type() {
		return bus_type;
	}
	public void setBus_type(String bus_type) {
		this.bus_type = bus_type;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public double getArrival_time() {
		return arrival_time;
	}
	public void setArrival_time(double arrival_time) {
		this.arrival_time = arrival_time;
	}
	public double getDeparture_time() {
		return departure_time;
	}
	public void setDeparture_time(double departure_time) {
		this.departure_time = departure_time;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	@Override
	public String toString() {
		return "Customer [fullname=" + fullname + ", mobile=" + mobile + ", email=" + email + ", bus_id=" + bus_id
				+ ", bus_name=" + bus_name + ", bus_type=" + bus_type + ", source=" + source + ", destination="
				+ destination + ", arrival_time=" + arrival_time + ", departure_time=" + departure_time + ", price="
				+ price + ", duration=" + duration + ", day=" + day + "]";
	}

}
