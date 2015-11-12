package com.fourfates.rentalcar.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="userroles")
public class UserRoles extends DomainModel {

	private static final long serialVersionUID = 1L;

	@ManyToOne(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	@JoinColumn(name = "userid", referencedColumnName = "id")
	private User user;
	
	@Column
	@Enumerated(EnumType.STRING)
	private UserRoleType userRoleType;

	public UserRoles(){
		
	}
	
	public UserRoles(User user, UserRoleType type) {
		setUser(user);
		setUserRoleType(type);
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserRoleType getUserRoleType() {
		return userRoleType;
	}

	public void setUserRoleType(UserRoleType userRoleType) {
		this.userRoleType = userRoleType;
	}
}
