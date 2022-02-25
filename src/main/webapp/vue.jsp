
<%@ page import ="com.dao.Produit"%>
<%@page import="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>


<%List<Produit> liste =(List<Produit>)request.getAttribute("listeP"); %>
<table class="table table-hover">
	<tr>
		<th>ID</th>
		<th>Nom</th>
		<th>Prix</th>
		<th>Quantite</th>
		<th>ACTION</th>
	</tr>
	<% for (Produit p:liste){ %>
	<tr>
		<td><%= p.getId()%></td>
		<td><%= p.getNom()%></td>
		<td><%= p.getPrix()%></td>
		<td><%= p.getQuantite()%></td>
		<td><a href="suppProduit?id=<%= p.getId()%>" class="btn btn-danger"> Supprimer</a> </td>
	</tr>
	<% } %>

</table>
</body>
</html>