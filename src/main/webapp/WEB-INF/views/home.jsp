<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta name="description" content="">
	    <meta name="author" content="">
	    <title>Aluguel de carros - Home</title>
	    
	    <!-- Bootstrap Core CSS -->
	    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
	    
	    <!-- Custom CSS -->
	    <link href="${pageContext.request.contextPath}/assets/css/simple-sidebar.css" rel="stylesheet">
	</head>
	<body>
	    <div id="wrapper">
	        <!-- Sidebar -->
	        <div id="sidebar-wrapper">
	            <ul class="sidebar-nav">
	                <li class="sidebar-brand" style="color: white;">
	                	Usuário: ${pageContext.request.userPrincipal.name}
	                </li>
	                <li>
	                    <a href="${pageContext.request.contextPath}/controller/user/home">Home</a>
	                </li>
	                <li>
	                    <!-- For login user -->
						<c:url value="/logout" var="logoutUrl" />
						<form action="${logoutUrl}" method="post" id="logoutForm">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						</form>
						<script>
							function formSubmit() {
								document.getElementById("logoutForm").submit();
							}
						</script>
	                    <a href="javascript:formSubmit()">Logout</a>
	                </li>
	            </ul>
	        </div>
	        <!-- /#sidebar-wrapper -->
	
	        <!-- Page Content -->
	        <div id="page-content-wrapper">
	            <div class="container-fluid">
	                <div class="row">
	                    <div class="col-lg-12">
	                        <h1>Aluguel de Carros</h1>
	                        <p>Página inicial do projeto de aluguel de carros!</p>
	                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>
     						<form:form action="save?${_csrf.parameterName}=${_csrf.token}" method="post">
								<div id="panel-dropzone">
			                        <button type="submit">Salvar</button>
		                        </div>
							</form:form>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!-- /#page-content-wrapper -->
	    </div>
	    <!-- /#wrapper -->
	
	    <!-- jQuery -->
	    <script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
	
	    <!-- Bootstrap Core JavaScript -->
	    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	
	    <!-- Menu Toggle Script -->
	    <script>
	    $("#menu-toggle").click(function(e) {
	        e.preventDefault();
	        $("#wrapper").toggleClass("toggled");
	    });
	    </script>
	</body>
</html>