<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<head>
<title>Cliente</title>
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery.maskedinput-1.3.1.min.js"></script>
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

<h1>Dados do cliente</h1>
<hr />
<form action="editClient?${_csrf.parameterName}=${_csrf.token}" method="post">
	<input type="hidden" name="clientId" value="${client.id}">
	<div class="row">
		<div class="col-md-4">
			<div class="form-group">
				<label for="exampleInputEmail1">Nome</label> <input type="text"
					class="form-control" id="exampleInputNome"
					value="${client.nome}" name="nome">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
			<div class="form-group">
				<label for="exampleInputPassword1">CPF</label> <input
					type="text" class="form-control" id="exampleInputCpf"
					value="${client.cpf}" name="cpf">
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<label for="exampleInputRg">Data de Nascimento</label> <input
					type="text" class="form-control" id="exampleInputNascimento"
					value="${client.dataNasc}" name="nascimento">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
			<div class="form-group">
				<label for="exampleInputRg">RG</label> <input type="text"
					class="form-control" id="exampleInputRg"
					value="${client.rg}" name="rg">
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<label for="exampleInputRg">Estado Emissor</label> <input
					type="text" class="form-control" id="exampleInputEmissor"
					value="${client.estadoEmissor}" name="emissor">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<div class="form-group">
				<label for="exampleInputRg">E-mail</label> <input type="text"
					class="form-control" id="exampleInputEmail"
					value="${client.email}" name="email">
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<label for="exampleInputRg">Telefone</label> <input type="text"
					class="form-control" id="exampleInputTelefone"
					value="${client.telefone}" name="telefone">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
			<div class="form-group">
				<label for="exampleInputRg">Validade da carteira</label> <input
					type="text" class="form-control" id="exampleInputValidade"
					value="${client.validadeCarteira}" name="carteira">
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<label for="exampleInputRg">Numero do registro</label> <input
					type="text" class="form-control" id="exampleInputRegistro"
					value="${client.numeroRegistro}" name="registro">
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-1">
			<div class="form-group">
				<button class="btn btn-primary" type="button">Cancelar</button>
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<button class="btn btn-primary" type="submit">Alterar</button>
			</div>
		</div>
	</div>
</form>

<script type="text/javascript">// <![CDATA[
jQuery(function($) {
    $.mask.definitions['~']='[+-]';
    //Inicio Mascara Telefone
	$('input[type=tel]').mask("(99) 9999-9999?9").ready(function(event) {
		var target, phone, element;
		target = (event.currentTarget) ? event.currentTarget : event.srcElement;
		phone = target.value.replace(/\D/g, '');
		element = $(target);
		element.unmask();
		if(phone.length > 10) {
			element.mask("(99) 99999-999?9");
		} else {
			element.mask("(99) 9999-9999?9");
		}
	});
	//Fim Mascara Telefone
    $("#cpf").mask("999.999.999-99");
	$("#rg").mask("99.999.999-*");
   });
// ]]>
</script>

<c:import url="footer.jsp" />