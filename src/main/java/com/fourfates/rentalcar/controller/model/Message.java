package com.fourfates.rentalcar.controller.model;

public enum Message {
	
	SAVE_CLIENT_SUCESS("Cliente salvo com sucesso."),
	SAVE_CLIENT_ERRO("Erro ao salvar o cliente."), 
	SAVE_CAR_SUCESS("Automóvel Salvo com sucesso."), 
	SAVE_CAR_ERROR("Erro ao savar o automóvel."),
	PAYMENT_SUCESS("Pagamento realizado com sucesso."),
	GROUP_SUCESS("Grupo salvo com sucesso."), 
	EXCLUDED_CLIENT_SUCESS("Cliente excluido com sucesso."),
	UPDATED_CLIENT_SUCESS("Cliente alterado com sucesso."), 
	DEVOLUTION_SUCESS("Devolução realizada com sucesso.");
	
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
