<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Four Fates - Rental Car</title>

<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/assets/css/sb-admin.css"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link
	href="${pageContext.request.contextPath}/assets/css/plugins/morris.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="${pageContext.request.contextPath}/assets/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">Locadora Four Fates</a>
			</div>
			<!-- Top Menu Items -->
			<ul class="nav navbar-right top-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="fa fa-envelope"></i> <b
						class="caret"></b></a>
					<ul class="dropdown-menu message-dropdown">
						<li class="message-preview"><a href="#">
								<div class="media">
									<span class="pull-left"> <img class="media-object"
										src="http://placehold.it/50x50" alt="">
									</span>
									<div class="media-body">
										<h5 class="media-heading">
											<strong>Mensagem</strong>
										</h5>
										<p class="small text-muted">
											<i class="fa fa-clock-o"></i> Yesterday at 4:32 PM
										</p>
										<p>Lorem ipsum dolor sit amet, consectetur...</p>
									</div>
								</div>
						</a></li>
						<li class="message-preview"><a href="#">
								<div class="media">
									<span class="pull-left"> <img class="media-object"
										src="http://placehold.it/50x50" alt="">
									</span>
									<div class="media-body">
										<h5 class="media-heading">
											<strong>Mensagem</strong>
										</h5>
										<p class="small text-muted">
											<i class="fa fa-clock-o"></i> Yesterday at 4:32 PM
										</p>
										<p>Lorem ipsum dolor sit amet, consectetur...</p>
									</div>
								</div>
						</a></li>
						<li class="message-preview"><a href="#">
								<div class="media">
									<span class="pull-left"> <img class="media-object"
										src="http://placehold.it/50x50" alt="">
									</span>
									<div class="media-body">
										<h5 class="media-heading">
											<strong>John Smith</strong>
										</h5>
										<p class="small text-muted">
											<i class="fa fa-clock-o"></i> Yesterday at 4:32 PM
										</p>
										<p>Lorem ipsum dolor sit amet, consectetur...</p>
									</div>
								</div>
						</a></li>
						<li class="message-footer"><a href="#">Read All New
								Messages</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="fa fa-user"></i> ${pageContext.request.userPrincipal.name} <b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
						</li>
						<li><a href="#"><i class="fa fa-fw fa-envelope"></i>
								Inbox</a></li>
						<li><a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
						</li>
						<li class="divider"></li>
						<li><c:url value="/logout" var="logoutUrl" />
								<form action="${logoutUrl}" method="post" id="logoutForm">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
								</form> <script>
									function formSubmit() {
										document.getElementById("logoutForm")
												.submit();
									}
								</script> <a href="javascript:formSubmit()"><i
									class="fa fa-fw fa-power-off">Logout</a></i></li>
					</ul></li>
			</ul>
			<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav side-nav">
					<li><a href="javascript:;" data-toggle="collapse"
						data-target="#demo"><i class="glyphicon glyphicon-floppy-disk"></i>
							Cadastrar <i class="fa fa-fw fa-caret-down"></i></a>
						<ul id="demo" class="collapse">
							<sec:authorize access="hasRole('ADMIN')">
								<li><a href="/rentalcar/controller/user/carRegisterView">Automovel</a></li>
							</sec:authorize>
							<li><a href="/rentalcar/controller/user/clientRegisterView">Cliente</a></li>
							<sec:authorize access="hasRole('ADMIN')">
								<li><a href="/rentalcar/controller/user/groupRegisterView">Grupo</a></li>
								<li><a href="/rentalcar/controller/user/userRegisterView">Usuário</a></li>
							</sec:authorize>
						</ul></li>
					<li><a href="javascript:;" data-toggle="collapse"
						data-target="#demo1"><i class="glyphicon glyphicon-search"></i>
							Consultar <i class="fa fa-fw fa-caret-down"></i></a>
						<ul id="demo1" class="collapse">
							<li><a href="/rentalcar/controller/user/clientConsultView">Clientes</a></li>
							<li><a href="/rentalcar/controller/user/carAvailabilityView">Disponibilidade</a></li>
							<sec:authorize access="hasRole('ADMIN')">
								<li><a href="/rentalcar/controller/user/groupConsultView">Grupo</a></li>
								<li><a href="/rentalcar/controller/user/userConsultView">Usuário</a></li>
							</sec:authorize>
						</ul></li>
					<li><a href="javascript:;" data-toggle="collapse"
						data-target="#demo2"><i class="glyphicon glyphicon-credit-card"></i>
							Locação <i class="fa fa-fw fa-caret-down"></i></a>
						<ul id="demo2" class="collapse">
							<li><a href="/rentalcar/controller/user/newLocationView">Nova Locação</a></li>
							<li><a href="/rentalcar/controller/user/devolutionRegisterView">Devolução</a></li>
						</ul>
					</li>
					<sec:authorize access="hasRole('ADMIN')">
						<li><a href="/rentalcar/controller/user/reportView"><i
								class="glyphicon glyphicon-list-alt"></i>Relatório</a></li>
					</sec:authorize>	
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>

		<div id="page-wrapper">

			<div class="container-fluid">