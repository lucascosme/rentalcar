<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<head>
<title>Cliente</title>
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

		<div class="row">
	       <div class="col-md-5">
	           <div class="form-group">
				   <h1>Cartao de débito</h1>
				   <hr />
				</div>
			</div>
			<div class="col-md-5">
		     	<div class="form-group">
		  			<h1 align="right"><label>Total: </label>R$ ${saveLocation}</h1>
				</div>
			</div>
		</div>

		<form action="debitPaymentConfirmation?${_csrf.parameterName}=${_csrf.token}" method="post">
	    <input type="hidden" name="total" value="${saveLocation}">
	    <input type="hidden" name="locationId" value="${locationId}">
	    <div class="row">
	        <div class="col-md-4">
	            <div class="form-group">
	                <label for="exampleInputName">Nome do titular</label>
	                <input type="text" class="form-control" placeholder="Nome Completo" name="titular">
	            </div>
	        </div>
	    </div>
	    <div class="row">
	     <div class="col-md-2">
	        <div class="form-group">
	            <label for="exampleInputName">CPF</label>
	            <input type="text" class="form-control" placeholder="45676543" name="cpf">
	        </div>
	    </div>
	    <div class="col-md-2">
	        <div class="form-group">
	            <label for="exampleInputName">Numero da conta</label>
	            <input type="text" class="form-control" placeholder="45676543" name="conta">
	        </div>
	    </div>
	</div>
	<div class="row">
	    <div class="col-md-2">
	        <div class="form-group">
	            <label for="exampleInputName">Agencia</label>
	            <input type="text" class="form-control" placeholder="45676543" name="agencia">
	        </div>
	    </div>
	</div>
	<div class="row">
	    <div class="col-md-2">
	        <div class="form-group">
	            <label for="exampleInputName">Banco</label>
	            <input type="text" class="form-control" placeholder="Nome Completo" name="banco">
	        </div>
	    </div>
	    <div class="col-md-2">
	        <div class="form-group">
	            <label for="exampleInputName">Telefone para contato</label>
	            <input type="text" class="form-control" placeholder="45676543" name="telefone">
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
	    <div class="col-md-2">
	        <div class="form-group">
	            <button class="btn btn-primary" type="submit">Confirmar Pagamento</button>
	        </div>
	    </div>
	</div>
	
	</form>

<c:import url="footer.jsp" />