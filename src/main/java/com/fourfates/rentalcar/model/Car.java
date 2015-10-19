package com.fourfates.rentalcar.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fourfates.rentalcar.controller.model.CarStatus;

@Entity
@Table(name="car")
public class Car extends DomainModel {

	private static final long serialVersionUID = 1L;
	
	@Column
	private String chassi;
	@Column
	private String placa;
	@Column
	private String cidade;
	@Column
	private double km;
	@Column
	private String estado;
	@Column
	private String modelo;
	@Column
	private String fabricante;
	@Column
	private double tarifa_kmlivre;
	@Column
	private double tarifa_kmcontrolado;
	@ManyToOne(fetch=FetchType.EAGER)
	private Group grupo;
	@Column
	private String cor;
	@Column
	@Enumerated(value = EnumType.STRING)
	private CarStatus Status;
	
	
	public CarStatus getStatus() {
		return Status;
	}
	public void setStatus(CarStatus status) {
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
	
	public String getValueGroup(Group group){
		return group.getCategoria();
	}
}
