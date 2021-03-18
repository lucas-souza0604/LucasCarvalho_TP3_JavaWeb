<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App TP3</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
		
		<form action="/usuario/incluir" method="post">
		
		<div class="form-group">
			<label>Informe seu nome</label>
			<input type="text" name="nome" class="form-control">
		</div>
		
		<div class="form-group">
			<label>Informe seu email</label>
			<input type="text" name="email" class="form-control">
		</div>
		
		<div class="form-group">
			<label>Informe sua senha</label>
			<input type="password" name="senha" class="form-control">
		</div>
		
		<button type="submit" class="btn btn-primary">Gravar</button>
		</form>
		
		<c:if test="${not empty usuarios}">
		
			  <h2>Listagem de Usuarios</h2>          
			  <table class="table">
			    <thead>
			      <tr>
			        <th>Nome</th>
			        <th>Email</th>
			        <th></th>
			      </tr>
			    </thead>
			    <tbody>
			    <c:forEach var="u" items="${usuarios}">
			      <tr>
			        <td>${u.nome}</td>
			        <td>${u.email}</td>
			        <td><a style="color:red;" fontfont-weight=bold href="/usuario/${u.id}/excluir">exluir</a></td>
			      </tr>
			    </c:forEach>
			    </tbody>
			  </table>
		 </c:if>
		 
		 
		 <c:if test="${empty usuarios}">
		 	<h2>Nenhum usuario cadastrado</h2> 
		 </c:if>
	</div>
</body>
</html>