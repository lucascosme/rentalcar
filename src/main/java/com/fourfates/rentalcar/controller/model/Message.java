package com.fourfates.rentalcar.controller.model;

public enum Message {
	
	SAVE_CLIENT_SUCESS("Cliente salvo com sucesso."),
	SAVE_CLIENT_ERRO("Erro ao salvar o cliente."), 
	SAVE_CAR_SUCESS("Automóvel Salvo com sucesso."), 
	SAVE_CAR_ERROR("Erro ao savar o automóvel.");
	
	private String key;
	
	Message(String key){
		this.key = key;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}
}
