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

 	<h1>Novo Usuario</h1>
	 <hr />
	  <form action="registing?${_csrf.parameterName}=${_csrf.token}" method="post">
	   <div class="row">
	     <div class="col-md-2">
	       <div class="form-group">
	         <label for="exampleInputEmail1">Usuario</label>
	         <input type="text" class="form-control" id="exampleInputNome" placeholder="Nome Completo" name="name">
	       </div>
	     </div>
	     <div class="col-md-2">
	       <div class="form-group">
	         <label for="exampleInputEmail1">Login</label>
	         <input type="text" class="form-control" id="exampleInputNome" placeholder="Nome Completo" name="userName">
	       </div>
	     </div>
	   </div>
	   <div class="row">
	     <div class="col-md-2">
	       <div class="form-group">
	         <label for="exampleInputPlaca">Permissão</label>
				<select class="form-control" name="userRoleTypes">
					<c:forEach var="userRolesType" items="${userRolesType}">
						<option value="${userRolesType}">${userRolesType}</option>
					</c:forEach>
			    </select>
	       </div>
	     </div>
	   </div>  
	   <div class="row">
	     <div class="col-md-2">
	       <div class="form-group">
	         <label for="exampleInputEmail1">Senha</label>
	         <input type="password" class="form-control" id="exampleInputNome" placeholder="Nome Completo" name="password">
	       </div>
	     </div>
	     <div class="col-md-2">
	       <div class="form-group">
	         <label for="exampleInputEmail1">Confirme a senha</label>
	         <input type="password" class="form-control" id="exampleInputNome" placeholder="Nome Completo" name="passwordConfirmation">
	       </div>
	     </div>
	   </div>
	
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
	 </div>
	</form>	

<c:import url="footer.jsp" />