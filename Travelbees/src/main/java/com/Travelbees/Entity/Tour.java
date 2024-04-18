package com.Travelbees.Entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Tour {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private long adhaar;
	
	private Date startDate;
	
	private Date endDate;
	
	private String firstName;
	
	private String lastName;
	
    private String email;
    
    private String mobile;
    
    private Long navigatorId;
	
	private String guideName;
	
	private String guideEmail;
	
	private String guideMobile;
	
	private String location;
	
	
	
    public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public String getGuideName() {
		return guideName;
	}


	public void setGuideName(String guideName) {
		this.guideName = guideName;
	}


	public String getGuideEmail() {
		return guideEmail;
	}


	public void setGuideEmail(String guideEmail) {
		this.guideEmail = guideEmail;
	}


	public String getGuideMobile() {
		return guideMobile;
	}


	public void setGuideMobile(String guideMobile) {
		this.guideMobile = guideMobile;
	}


	private Long touristId;


	public Long getId() {
		return id;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public long getAdhaar() {
		return adhaar;
	}


	public void setAdhaar(long adhaar) {
		this.adhaar = adhaar;
	}


	public Date getStartDate() {
		return startDate;
	}


	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}


	public Date getEndDate() {
		return endDate;
	}


	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}


	public Long getNavigatorId() {
		return navigatorId;
	}


	public void setNavigatorId(Long navigatorId) {
		this.navigatorId = navigatorId;
	}


	public Long getTouristId() {
		return touristId;
	}


	public void setTouristId(Long touristId) {
		this.touristId = touristId;
	}

	
}



