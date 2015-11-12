package com.fourfates.rentalcar.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fourfates.rentalcar.controller.model.LocationStatus;

@Entity
@Table(name="location")
public class Location extends DomainModel{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column
	@Enumerated(value=EnumType.STRING)
	private LocationStatus locationStatus;
	@Column
	private String dataLocacao;
	@Column
	private String dataDevolucao;
	@Column
	private String localLocacao;
	@Column
	private String localDevolucao;
	@Column
	private String tipoTarifa;
	@OneToOne(fetch=FetchType.EAGER)
	private Client client;
	@OneToOne(fetch=FetchType.EAGER)
	private Car car;

	public LocationStatus getLocationStatus() {
		return locationStatus;
	}
	public void setLocationStatus(LocationStatus locationStatus) {
		this.locationStatus = locationStatus;
	}
	public String getDataLocacao() {
		return dataLocacao;
	}
	public void setDataLocacao(String dataLocacao) {
		this.dataLocacao = dataLocacao;
	}
	public String getDataDevolucao() {
		return dataDevolucao;
	}
	public void setDataDevolucao(String dataDevolucao) {
		this.dataDevolucao = dataDevolucao;
	}
	public String getLocalLocacao() {
		return localLocacao;
	}
	public void setLocalLocacao(String localLocacao) {
		this.localLocacao = localLocacao;
	}
	public String getLocalDevolucao() {
		return localDevolucao;
	}
	public void setLocalDevolucao(String localDevolucao) {
		this.localDevolucao = localDevolucao;
	}
	public String getTipoTarifa() {
		return tipoTarifa;
	}
	public void setTipoTarifa(String tipoTarifa) {
		this.tipoTarifa = tipoTarifa;
	}
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}
	public Car getCar() {
		return car;
	}
	public void setCar(Car car) {
		this.car = car;
	}
}
