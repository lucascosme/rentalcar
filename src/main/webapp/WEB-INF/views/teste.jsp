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

<h3>Cliente=${client.id}</h3>
<h3>Carro=${car.id}</h3>
<h3>Total=${total}</h3>

<c:import url="footer.jsp" />