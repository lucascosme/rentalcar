<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<head>
<title>Locação</title>

</head>

<c:import url="header.jsp" />

<c:if test="${not empty sucess}">
   	<div class="alert alert-success alert-dismissible" role="alert">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		<strong>Sucesso!</strong> ${sucess}
	</div>
</c:if>	

<c:if test="${not empty warning}">
   	<div class="alert alert-warning alert-dismissible" role="alert">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		<strong>Atenção!</strong> ${warning}
	</div>
</c:if>	

<c:if test="${not empty error}">
   	<div class="alert alert-danger alert-dismissible" role="alert">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		<strong>Erro!</strong> ${error}
	</div>
</c:if>

<h1>Dados do Veiculo</h1>
	<hr />
	         <form>
	    <div class="row">
	        <div class="col-md-2">
	            <div class="form-group">
	                <label for="modelo">Modelo</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.modelo}" disabled="" name="modelo">
	            </div>
	        </div>
	        <div class="col-md-2">
	            <div class="form-group">
	                <label for="fabricatne">Fabricante</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.fabricante}" disabled="" name="fabricatne">
	            </div>
	        </div>
	        <div class="col-md-2">
	            <div class="form-group">
	                <label for="cor">Cor</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.cor}" disabled="" name="cor">
	            </div>
	        </div>
	    </div>
	
	    <div class="row">
	        <div class="col-md-2">
	            <div class="form-group">
	                <label for="chassi">Chassi</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.chassi}" disabled="" name="chassi">
	            </div>
	        </div>
	        <div class="col-md-2">
	            <div class="form-group">
	                <label for="placa">Placa</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.placa}" disabled="" name="placa">
	            </div>
	        </div>
	        <div class="col-md-2">
	            <div class="form-group">
	                <label for="grupo">Grupo</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="${valueGroup}" disabled="" name="grupo">
	            </div>
	        </div>
	    </div>
	
	    <div class="row">
	        <div class="col-md-2">
	            <div class="form-group">
	                <label for="cidade">Cidade</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.cidade}" disabled="" name="cidade">
	            </div>
	        </div>
	        <div class="col-md-1">
	            <div class="form-group">
	                <label for="estado">Estado</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.estado}" disabled="" name="estado">
	            </div>
	        </div>
	    </div>
	
	    <div class="row">
	        <div class="col-md-2">
	            <div class="form-group">
	                <label for="km">Km</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.km}" disabled="" name="km">
	            </div>
	        </div>
	        <div class="col-md-2">
	            <div class="form-group">
	                <label for="kmLivre">Tarifa Km Livre</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.tarifa_kmlivre}" disabled="" name="kmLivre">
	            </div>
	        </div>
	        <div class="col-md-2">
	            <div class="form-group">
	                <label for="kmControlado">Tarifa Km Controlado</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.tarifa_kmcontrolado}" disabled="" name="kmControlado">
	            </div>
	        </div>
	    </div>
	
	
	    <h1>Dados do Cliente</h1>
	    <hr />
	
	    <div class="row">
	        <div class="col-md-6">
	            <div class="form-group">
	                <label for="exampleInputPlaca">Cliente</label>
	                <select class="form-control" id="selectTest">
	                    <c:forEach var="client" items="${listClient}">
	                    		<option value="${client.id}">${client.nome}</option>
	                    
    					</c:forEach>
	                </select>
	            </div>
	        </div>
	    </div>
	    <div class="row">
	        <div class="col-md-2">
	            <div class="form-group">
	                <label for="cpf">CPF</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input" disabled="" name="cpf">
	            </div>
	        </div>
	        <div class="col-md-2">
	            <div class="form-group">
	                <label for="rg">RG</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input" disabled="" name="rg">
	            </div>
	        </div>
	        <div class="col-md-2">
	            <div class="form-group">
	                <label for="estadoEmissor">Estado Emissor</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input" disabled="" name="estadoEmissor">
	            </div>
	        </div>
	    </div>
	    <div class="row">
	        <div class="col-md-3">
	            <div class="form-group">
	                <label for="numeroRegistro">Numero de Registro</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input" disabled="" name="numeroRegistro">
	            </div>
	        </div>
	        <div class="col-md-3">
	            <div class="form-group">
	                <label for="validadeCarteira">Validade da CNH</label>
	                <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input" disabled="" name="validadeCarteira">
	            </div>
	        </div>
	    </div>
	    <br />
	    <div class="row">
	        <div class="col-md-1">
	            <div class="form-group">
	                <button class="btn btn-primary" type="button">Cancelar</button>
	            </div>
	        </div>
	        <div class="col-md-1">
	            <div class="form-group">
	            <button class="btn btn-primary" type="submit">Confirmar</button>
	            </div>
	        </div>
	    </div>
	
	</form>

<c:import url="footer.jsp" />