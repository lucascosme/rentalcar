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

<h1>Lista de Clientes</h1>
    			<hr />
    			
    			<table class="table table-hover table-striped">
    				<thead>
    					<tr>
    						<th>Nome</th>
    						<th>CPF</th>
    						<th>RG</th>
    						<th>Telefone</th>
    						<th>Email</th>
                            <th>validade CNH</th>
                        </tr>
    				</thead>
    				<tbody>
						<c:forEach var="listClient" items="${listClient}">
	    					<tr>
	    						<td>${listClient.nome}</td>
	    						<td>${listClient.cpf}</td>
	    						<td>${listClient.rg}</td>
	    						<td>${listClient.telefone}</td>
	    						<td>${listClient.email}</td>
	                            <td>${listClient.validadeCarteira}</td>
	                            <td>
	                            <button type="button" class="btn btn-default" onclick="window.document.location='/rentalcar/controller/user/editClientView?clientId=${listClient.id}&${_csrf.parameterName}=${_csrf.token}';">
	                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
	                            </button>
	                            </td>
	                            <td>
	                            <button type="button" class="btn btn-default" onclick="window.document.location='/rentalcar/controller/user/deleteClient?clientId=${listClient.id}&${_csrf.parameterName}=${_csrf.token}';">
	                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
	                            </button>
	                            </td>
	    					</tr>
    					</c:forEach>
    				</tbody>
    			</table>
    			
<c:import url="footer.jsp" />