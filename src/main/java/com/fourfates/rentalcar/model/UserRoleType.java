package com.fourfates.rentalcar.model;

public enum UserRoleType {
	
	ADMIN(false),
	USER(false);

private boolean requiredPassword;
	
	UserRoleType(boolean requiredPassword) {
		setRequiredPassword(requiredPassword);
	}
	
	public boolean isRequiredPassword() {
		return requiredPassword;
	}

	public void setRequiredPassword(boolean requiredPassword) {
		this.requiredPassword = requiredPassword;
	}

	public static UserRoleType[] getTypes(UserRoleType userRoleType) {
		if (ADMIN.equals(userRoleType)) {
			return UserRoleType.values();
		}
		UserRoleType[] userRoleTypes = {userRoleType};
		return userRoleTypes;
	}
}
