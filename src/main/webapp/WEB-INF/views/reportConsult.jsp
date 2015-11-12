<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<head>
<title>Relatório</title>
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

<h1>Relatório de locações</h1>
    			<hr />
    			
    			<table class="table table-hover table-striped">
    				<thead>
    					<tr>
    						<th>Cliente</th>
    						<th>Pagamento</th>
    						<th>Carro</th>
    						<th>Retirada</th>
    						<th>Devolução</th>
    						<th>Tarifa</th>
                        </tr>
    				</thead>
    				<tbody>
						<c:forEach var="listLocations" items="${listLocation}">
	    					<tr>
	    						<td>${listLocations.client.nome}</td>
	    						<td>${listLocations.locationStatus}</td>
	    						<td>${listLocations.car.modelo}</td>
	    						<td>${listLocations.localLocacao}</td>
	    						<td>${listLocations.localDevolucao}</td>
	    						<td>${listLocations.tipoTarifa}</td>
	    					</tr>
    					</c:forEach>
    				</tbody>
    			</table>
    			
<c:import url="footer.jsp" />