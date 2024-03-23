<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Financiamento Carro</title>
</head>
<body>
	<form:form method="POST" modelAttribute="financiamento">
		<fieldset>
			<legend>Financiamento ou Compra</legend>
			<label for="valor">Valor do Carro: </label>
			<input type="number" id="valor" name="valor" placeholder="Valor"/> <br>
			
		<button>Financiar</button>
			
		</fieldset>
	</form:form>
	
</body>
</html>