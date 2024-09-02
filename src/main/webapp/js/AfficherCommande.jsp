
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste des commandes</title>
</head>
<body>
<h1>la liste des commandes
</h1>
<sql:setDataSource var="db" 
driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost/librairie_db"
user="root"
password=""
/>
<sql:query dataSource="${db}" var="rs">
select * from commande_tb;
</sql:query>
<table  border="2" width= "100%">
<tr>
<th>Code commande </th>
<th>Code livre</th>
<th>Code fournisseur</th>
<th>Date Commande</th>
<th>Prix d'achat </th>
<th>Nombre d'exemplaires</th>
<th>Modifier</th>
<th>Supprimer</th>
</tr>
<c:forEach items="${rs.rows}" var="u">
<tr>
<td>${u.id_commande}</td>
<td>${u.isbn}</td>
<td>${u.code_fournisseur}</td>
<td>${u.data_achat}</td>
<td>${u.prix_achat}</td>
<td>${u.nb_exemplaires}</td>
<td>
<a href="EditCommande?id_commande=${u.id_commande}&isbn=${u.isbn}&code_fournisseur=${u.code_fournisseur}&data_achat=${u.data_achat}&prix_achat=${u.prix_achat}&nb_exemplaires=${u.nb_exemplaires} ">Edit</a>  	
   </td>
<td>
<a href="DeleteCommande?id_commande=${u.id_commande}">Delete</a>
</tr>
</c:forEach>
</body>
</html>