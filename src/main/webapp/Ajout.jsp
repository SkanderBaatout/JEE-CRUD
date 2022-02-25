<%@page import="java.util.List"%>
<%@ page import ="com.dao.Produit"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajouter un nouveau Produit</title>

</head>
<body>



	<form method="post" action="addProduit">
	 	<p> Nom: <input type="text" name="nom"></p>
	 	<p> Prix: <input type="number" name="prix"></p>
	 	<p> Quantie: <input type="number" name="quantite"></p>
	 	<p><input type="submit" value="Ajouter"></p>
	 	
 	</form>
</body>
</html>