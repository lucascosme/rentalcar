package com.fourfates.rentalcar.model;

public enum UserStatus {

	ACTIVE("Ativo"),
	INACTIVE("Inativo");
	
	private UserStatus(String description) {
		setDescription(description);
	}
	
	private String description;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isActive() {
		return this.equals(ACTIVE);
	}
}
