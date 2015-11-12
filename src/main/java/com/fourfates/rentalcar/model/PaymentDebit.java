package com.fourfates.rentalcar.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="paymentdebit")
public class PaymentDebit extends Payment{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Column
	private String banco;
	@Column
	private String agencia;
	@Column
	private String contaCorrente;
	@Column
	private String nomeTitular;
	@Column
	private String cpf;
	@Column
	private String telefone;
	
	public String getBanco() {
		return banco;
	}
	public void setBanco(String banco) {
		this.banco = banco;
	}
	public String getAgencia() {
		return agencia;
	}
	public void setAgencia(String agencia) {
		this.agencia = agencia;
	}
	public String getContaCorrente() {
		return contaCorrente;
	}
	public void setContaCorrente(String contaCorrente) {
		this.contaCorrente = contaCorrente;
	}
	public String getNomeTitular() {
		return nomeTitular;
	}
	public void setNomeTitular(String nomeTitular) {
		this.nomeTitular = nomeTitular;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
}
