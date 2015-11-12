package com.fourfates.rentalcar.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Entity
@Table(name="users")
public class User extends DomainModel {

	private static final long serialVersionUID = -755401092234525647L;
	
	@Column(nullable=false, unique=true)
	private String userName;
	
	@Column(nullable=false)
	private String name;
	
	@Column(nullable=false)
	private String password;
	
	@Column(nullable=false)
	@Enumerated(EnumType.STRING)
	private UserStatus userStatus;
	
	public User(String name, String userName, String password) {
		setName(name);
		setUserName(userName);
		setPassword(password);
		setUserStatus(UserStatus.ACTIVE);
	}
	
	public User() {
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = new BCryptPasswordEncoder().encode(password);
	}

	public UserStatus getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(UserStatus userStatus) {
		this.userStatus = userStatus;
	}
}