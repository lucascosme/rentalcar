<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<head>
<title>Automóvel</title>
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

	<h1>Cadastro de automovel</h1>
		<hr />
		<form action="carSave?${_csrf.parameterName}=${_csrf.token}" method="post">
			<div class="row">
				<div class="col-md-2">
					<div class="form-group">
						<label for="exampleInputModelo">Modelo</label>
						<input type="text" class="form-control" id="exampleInputModelo" placeholder="Ex:Corsa" name="modelo">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="exampleInputFabricante">Fabricante</label>
						<input type="text" class="form-control" id="exampleInputFabricante" placeholder="EX:Chevrolet" name="fabricante">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="exampleInputCor">Cor</label>
						<input type="text" class="form-control" id="exampleInputCor" placeholder="Ex:Preto" name="cor">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2">
					<div class="form-group">
						<label for="exampleInputChassi">Chassi</label>
						<input type="text" class="form-control" id="exampleInputChassi" placeholder="EX:456786575" name="chassi">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="exampleInputPlaca">Placa</label>
						<input type="text" class="form-control" id="exampleInputPlaca" placeholder="EX:dae-3454" name="placa">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2">
					<div class="form-group">
                        <label for="exampleInputPlaca">Grupo</label>
    					<select class="form-control" name="grupo">
    						<c:forEach var="group" items="${listGroup}">
    							<option value="${group.id}">${group.categoria}</option>
    						</c:forEach>
                        </select>
                    </div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="form-group">
						<label for="exampleInputCidade">Cidade</label>
						<input type="text" class="form-control" id="exampleInputCidade" placeholder="Ex:Franco da Rocha" name="cidade">
					</div>
				</div>
				<div class="col-md-1">
					<div class="form-group">
						<label for="exampleInputEstado">Estado</label>
						<input type="text" class="form-control" id="exampleInputEstado" placeholder="Ex:sp" name="estado">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2">
					<div class="form-group">
						<label for="exampleInputKm">Km</label>
						<input type="text" class="form-control" id="exampleInputKm" placeholder="Ex:10.000" name="km">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="exampleInputKmLivre">Tarifa Km Livre</label>
						<input type="text" class="form-control" id="exampleInputKmLivre" placeholder="Ex:45,00" name="kmLivre">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="exampleInputKmControlado">Tarifa Km Controlado</label>
						<input type="text" class="form-control" id="exampleInputKmControlado" placeholder="Ex:90,00" name="kmControlado">
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
					<button class="btn btn-primary" type="submit">Gravar</button>
					</div>
				</div>
			</div>
		</form>
<c:import url="footer.jsp" />