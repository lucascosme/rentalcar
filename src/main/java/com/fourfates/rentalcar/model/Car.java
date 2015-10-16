package com.fourfates.rentalcar.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="car")
public class Car extends DomainModel {

	private static final long serialVersionUID = 1L;
	
	private String chassi;
	private String placa;
	private String cidade;
	private double km;
	private String estado;
	private String modelo;
	private String fabricante;
	private double tarifa_kmlivre;
	private double tarifa_kmcontrolado;
	@ManyToOne(fetch=FetchType.EAGER)
	private Group grupo;
	private String cor;
	private String Status;
	
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getChassi() {
		return chassi;
	}
	public void setChassi(String chassi) {
		this.chassi = chassi;
	}
	public String getPlaca() {
		return placa;
	}
	public void setPlaca(String placa) {
		this.placa = placa;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public double getKm() {
		return km;
	}
	public void setKm(double km) {
		this.km = km;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public String getFabricante() {
		return fabricante;
	}
	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}
	public double getTarifa_kmlivre() {
		return tarifa_kmlivre;
	}
	public void setTarifa_kmlivre(double tarifa_kmlivre) {
		this.tarifa_kmlivre = tarifa_kmlivre;
	}
	public double getTarifa_kmcontrolado() {
		return tarifa_kmcontrolado;
	}
	public void setTarifa_kmcontrolado(double tarifa_kmcontrolado) {
		this.tarifa_kmcontrolado = tarifa_kmcontrolado;
	}
	public Group getGrupo() {
		return grupo;
	}
	public void setGrupo(Group grupo) {
		this.grupo = grupo;
	}
	public String getCor() {
		return cor;
	}
	public void setCor(String cor) {
		this.cor = cor;
	}
}
