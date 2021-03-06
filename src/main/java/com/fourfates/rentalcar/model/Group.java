package com.fourfates.rentalcar.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="cargroup")
public class Group extends DomainModel {

	private static final long serialVersionUID = 1L;

	@Column
	private String categoria;

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
}
