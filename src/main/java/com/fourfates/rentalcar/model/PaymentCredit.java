package com.fourfates.rentalcar.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="paymentcredit")
public class PaymentCredit extends Payment{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Column
	private String bandeiraCartao;
	@Column
	private String titular;
	@Column
	private String cpf;
	@Column
	private String numeroCartao;
	@Column
	private String validadeCartao;
	@Column
	private String codSeguranca;
	
	public String getBandeiraCartao() {
		return bandeiraCartao;
	}
	public void setBandeiraCartao(String bandeiraCartao) {
		this.bandeiraCartao = bandeiraCartao;
	}
	public String getTitular() {
		return titular;
	}
	public void setTitular(String titular) {
		this.titular = titular;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getNumeroCartao() {
		return numeroCartao;
	}
	public void setNumeroCartao(String numeroCartao) {
		this.numeroCartao = numeroCartao;
	}
	public String getValidadeCartao() {
		return validadeCartao;
	}
	public void setValidadeCartao(String validadeCartao) {
		this.validadeCartao = validadeCartao;
	}
	public String getCodSeguranca() {
		return codSeguranca;
	}
	public void setCodSeguranca(String codSeguranca) {
		this.codSeguranca = codSeguranca;
	}
}
