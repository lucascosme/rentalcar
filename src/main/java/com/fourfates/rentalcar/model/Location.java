package com.fourfates.rentalcar.model;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Location extends DomainModel {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@OneToOne(fetch=FetchType.LAZY)
	private Car car;
	private int codigoLocacao;
	private String modelo;
	private Calendar dataHoraLocacao;
	private Calendar dataHoraDevolucao;
	private String localLocacao;
	private String localDevolucao;
	private String tipoTarifa;
	@OneToMany(fetch=FetchType.LAZY)
	private Client client;
	

}
