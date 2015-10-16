package com.fourfates.rentalcar.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="grup")
public class Group extends DomainModel {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String categoria;
	
	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
}
