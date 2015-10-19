package com.fourfates.rentalcar.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="location")
public class Location extends DomainModel{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column
	private int codigoLocacao;
	@Column
	private String modelo;
	@Column
	private Calendar dataHoraLocacao;
	@Column
	private Calendar dataHoraDevolucao;
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
	
	public int getCodigoLocacao() {
		return codigoLocacao;
	}
	public void setCodigoLocacao(int codigoLocacao) {
		this.codigoLocacao = codigoLocacao;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public Calendar getDataHoraLocacao() {
		return dataHoraLocacao;
	}
	public void setDataHoraLocacao(Calendar dataHoraLocacao) {
		this.dataHoraLocacao = dataHoraLocacao;
	}
	public Calendar getDataHoraDevolucao() {
		return dataHoraDevolucao;
	}
	public void setDataHoraDevolucao(Calendar dataHoraDevolucao) {
		this.dataHoraDevolucao = dataHoraDevolucao;
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
