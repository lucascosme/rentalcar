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

<h1>Cadastro de cliente</h1>
<hr />
<form action="saveClient?${_csrf.parameterName}=${_csrf.token}" method="post">
	<div class="row">
		<div class="col-md-4">
			<div class="form-group">
				<label for="exampleInputEmail1">Nome</label> <input type="text"
					class="form-control" id="exampleInputNome"
					placeholder="Nome Completo" name="nome">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
			<div class="form-group">
				<label for="exampleInputPassword1">CPF</label> <input
					type="text" class="form-control" id="exampleInputCpf"
					placeholder="EX:42302885798" name="cpf">
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<label for="exampleInputRg">Data de Nascimento</label> <input
					type="text" class="form-control" id="exampleInputNascimento"
					placeholder="EX:23/03/2000" name="nascimento">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
			<div class="form-group">
				<label for="exampleInputRg">RG</label> <input type="text"
					class="form-control" id="exampleInputRg"
					placeholder="EX:459683997" name="rg">
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<label for="exampleInputRg">Estado Emissor</label> <input
					type="text" class="form-control" id="exampleInputEmissor"
					placeholder="SP" name="emissor">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
			<div class="form-group">
				<h5>
					<b>Sexo</b>
				</h5>
				<input type="radio" name="sexo" id="optionsRadios1"
					value="feminino" checked>Feminino<br> <input
					type="radio" name="sexo" id="optionsRadios1"
					value="masculino" checked>Masculino
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<div class="form-group">
				<label for="exampleInputRg">E-mail</label> <input type="text"
					class="form-control" id="exampleInputEmail"
					placeholder="nome@hotmail.com" name="email">
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<label for="exampleInputRg">Telefone</label> <input type="text"
					class="form-control" id="exampleInputTelefone"
					placeholder="EX:44493454" name="telefone">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
			<div class="form-group">
				<label for="exampleInputRg">Validade da carteira</label> <input
					type="text" class="form-control" id="exampleInputValidade"
					placeholder="EX:00/00/0000" name="carteira">
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<label for="exampleInputRg">Numero do registro</label> <input
					type="text" class="form-control" id="exampleInputRegistro"
					placeholder="EX:3454" name="registro">
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
		<div class="col-md-1">
			<div class="form-group">
				<button class="btn btn-primary" type="submit">Gravar</button>
			</div>
		</div>
	</div>
</form>
<c:import url="footer.jsp" />