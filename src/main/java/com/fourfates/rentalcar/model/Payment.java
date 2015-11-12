package com.fourfates.rentalcar.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToOne;

@MappedSuperclass
public class Payment extends DomainModel {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column
	private double juros;
	@Column
	private double valor;
	@OneToOne(fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="idLocacao", referencedColumnName="id")
	private Location locacao;
	
	public double getJuros() {
		return juros;
	}
	public void setJuros(double juros) {
		this.juros = juros;
	}
	public double getValor() {
		return valor;
	}
	public void setValor(double valor) {
		this.valor = valor;
	}
	public Location getLocacao() {
		return locacao;
	}
	public void setLocacao(Location locacao) {
		this.locacao = locacao;
	}
}
