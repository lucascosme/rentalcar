<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<head>
<title>Locação</title>
	
	<script src="js/jquery.js"></script>
	
		<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

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

	<h1>Dados do Veiculo</h1>
<hr />
      <form action="confirmLocation?idCar=${infoCar.id}&${_csrf.parameterName}=${_csrf.token}" method="post">
        <div class="row">
            <div class="col-md-2">
                <div class="form-group">
                    <label for="modelo">Modelo</label>
                    <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.modelo}" disabled="" name="modelo">
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label for="fabricatne">Fabricante</label>
                    <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.fabricante}" disabled="" name="fabricatne">
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label for="cor">Cor</label>
                    <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.cor}" disabled="" name="cor">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <div class="form-group">
                    <label for="chassi">Km</label>
                    <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.km}" disabled="" name="km">
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label for="placa">Tarifa Km Livre</label>
                    <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.tarifa_kmlivre}" disabled="" name="kmLivre">
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label for="grupo">Tarifa Km Controlado</label>
                    <input class="form-control" id="disabledInput" type="text" placeholder="${infoCar.tarifa_kmcontrolado}" disabled="" name="kmControlado">
                </div>
            </div>
        </div>
        <h1>Tarifa</h1>
        <hr />
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label>Seleciona uma forma de tarifa(Por km Livre ou Km Controlado)</label>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <div class="form-group">
                    <input type="radio" name="tarifa" value="kmLivre"> <label>Km Livre</label>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <input type="radio" name="tarifa" value="kmControlado"> <label>Km Controlado</label>
                </div>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-2">
                <div class="form-group">
                    <label for="tarifaDias">Nº de dias</label>
                    <input type="text" class="form-control" id="tarifaDias" placeholder="Nome Completo" name="tarifaDias">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <div class="form-group">
                    <label for="tarifaKm">Nº de Km</label>
                    <input type="text" class="form-control" id="tarifaKm" placeholder="Nome Completo" name="tarifaKm">
                </div>
            </div>
        </div>
        <hr />
        
        <h1>Forma de pagamento</h1>
        <hr />
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label>Seleciona uma forma de pagamento</label>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <div class="form-group">
                    <input type="radio" name="pagamento" value="credito"> <label>Cartão de Crédito</label>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <input type="radio" name="pagamento" value="debito"> <label>Cartão de Débito</label>
                </div>
            </div>
        </div>
        <hr />
        
        <h1>Local da locação</h1>
        <hr />
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label>Informe o local de locação e o local de devolução</label>
                </div>
            </div>
        </div>
         <div class="row">
            <div class="col-md-2">
                <div class="form-group">
                    <label for="tarifaKm">Local de locação</label>
                    <input type="text" class="form-control" id="locacao" placeholder="Nome Completo" name="locacao">
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label for="tarifaKm">Local de devolução</label>
                    <input type="text" class="form-control" id="devolucao" placeholder="Nome Completo" name="devolucao">
                </div>
            </div>
        </div>
	
	    <h1>Dados do Cliente</h1>
	    <hr />
	
	    <div class="row">
	        <div class="col-md-6">
	            <div class="form-group">
	                <label for="exampleInputPlaca">Cliente</label>
	                <select class="form-control" id="options" onchange="optionCheck()" name="client">
	                   	<option	value="selecione">Selecione um cliente</option>
	                    <c:forEach var="client" items="${listClient}">
	                    		<option value="${client.id}">${client.nome}</option>
	                    
    					</c:forEach>
	                </select>
	            </div>
	        </div>
	    </div>
	    <hr />
	    <br />
	    <div class="row">
	        <div class="col-md-1">
	            <div class="form-group">
	                <button class="btn btn-primary" type="button">Cancelar</button>
	            </div>
	        </div>
	        <div class="col-md-1">
	            <div class="form-group">
	            <button class="btn btn-primary" type="submit">Confirmar Locação</button>
	            </div>
	        </div>
	    </div>
	
	</form>
	
<script type="text/javascript">
$('input[name="tarifa"]').change(function(){ // Radio button
    var $paymode = $('input[name="tarifa"]:checked').val();
    if ($paymode == 'kmLivre') {
        $('#tarifaDias input').removeAttr('disabled', 'disabled');
        $('#tarifaKm input').attr('disabled', 'disabled');
    } else if ($paymode == 'kmControlado'){
        $('#tarifaDias input').attr('disabled', 'disabled');
        $('#tarifaKm input').removeAttr('disabled', 'disabled');
    }
});
</script>

<c:import url="footer.jsp" />