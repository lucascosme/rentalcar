<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Morris Charts CSS -->
<link href="${pageContext.request.contextPath}/css/plugins/morris.css"
	rel="stylesheet">
</head>
<body>

		<div class="container-fluid">
			<h1>Cadastro de cliente</h1>

			<form>
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label for="exampleInputEmail1">Nome</label> <input type="text"
								class="form-control" id="exampleInputNome"
								placeholder="Nome Completo">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2">
						<div class="form-group">
							<label for="exampleInputPassword1">CPF</label> <input type="text"
								class="form-control" id="exampleInputCpf"
								placeholder="EX:42302885798">
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label for="exampleInputRg">Data de Nascimento</label> <input
								type="text" class="form-control" id="exampleInputNascimento"
								placeholder="EX:23/03/2000">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2">
						<div class="form-group">
							<label for="exampleInputRg">RG</label> <input type="text"
								class="form-control" id="exampleInputRg"
								placeholder="EX:459683997">
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label for="exampleInputRg">Estado Emissor</label> <input
								type="text" class="form-control" id="exampleInputEmissor"
								placeholder="SP">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2">
						<div class="form-group">
							<h5>
								<b>Sexo</b>
							</h5>
							<input type="radio" name="optionsRadios" id="optionsRadios1"
								value="option1" checked>Feminino<br> <input
								type="radio" name="optionsRadios" id="optionsRadios1"
								value="option1" checked>Masculino
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label for="exampleInputRg">E-mail</label> <input type="text"
								class="form-control" id="exampleInputEmail"
								placeholder="nome@hotmail.com">
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label for="exampleInputRg">Telefone</label> <input type="text"
								class="form-control" id="exampleInputTelefone"
								placeholder="EX:44493454">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2">
						<div class="form-group">
							<label for="exampleInputRg">Validade da carteira</label> <input
								type="text" class="form-control" id="exampleInputValidade"
								placeholder="EX:00/00/0000">
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label for="exampleInputRg">Numero do registro</label> <input
								type="text" class="form-control" id="exampleInputRegistro"
								placeholder="EX:3454">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-1">
						<div class="form-group">
							<button class="btn btn-primary" type="submit">Gravar</button>
						</div>
					</div>
					<div class="col-md-1">
						<div class="form-group">
							<button class="btn btn-primary" type="button">Cancelar</button>
						</div>
					</div>
				</div>
			</form>
		</div>
</body>
</html>