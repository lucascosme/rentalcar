<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<head>
<title>Nova Locação</title>
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

	<h1>Nova Locação</h1>
    			<hr />
    			<h4>Selecione a baixo qual veículo deseja alugar.</h4>

    			<table class="table table-bordered table-hover">
    				<thead>
    					<tr>
    						<th>Modelo</th>
    						<th>Cor</th>
    						<th>Fabricante</th>
    						<th>Km Livre</th>
    						<th>Km Controlado</th>
    					</tr>
    				</thead>
    				<c:forEach var="carsAvailable" items="${listCarsAvailable}">
    				<tbody>
    					<tr onclick="window.document.location='/rentalcar/controller/user/locationInfoView?locationId=${carsAvailable.id}&${_csrf.parameterName}=${_csrf.token}';" style="cursor: Pointer">
    						<td>${carsAvailable.modelo}</td>
    						<td>${carsAvailable.cor}</td>
    						<td>${carsAvailable.fabricante}</td>
    						<td>${carsAvailable.tarifa_kmlivre}</td>
    						<td>${carsAvailable.tarifa_kmcontrolado}</td>
    					</tr>
    				</tbody>
    				</c:forEach>
    			</table>
	
<c:import url="footer.jsp" />