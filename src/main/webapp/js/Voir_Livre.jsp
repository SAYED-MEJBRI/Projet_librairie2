
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste des livres</title>
</head>
<body>
<h1>la liste des livres
</h1>
<sql:setDataSource var="db" 
driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost/librairie_db"
user="root"
password=""
/>
<sql:query dataSource="${db}" var="rs">
select * from livre_tb;
</sql:query>
<table  border="2" width= "100%">
<tr>
<th>ISBN </th>
<th>TITRE </th>
<th>THEME</th>
<th>NBR PAGES</th>
<th>NOM AUTEUR </th>
<th>EDITEUR</th>
<th>PRIX</th>
<th>Modifier</th>
<th>Supprimer</th>
</tr>
<c:forEach items="${rs.rows}" var="u">
<tr>
<td>${u.isbn}</td>
<td>${u.titre_livre}</td>
<td>${u.theme_livre}</td>
<td>${u.nbr_pages_livre}</td>
<td>${u.nom_auteur}</td>
<td>${u.editeur}</td>
<td>${u.prix_vente}</td>
<td>
<a href="DeleteLivre?isbn=${u.isbn}">Delete</a>
</td>
<td>	
<a href="ModifierLivre?isbn=${u.isbn}&titre_livre=${u.titre_livre}&theme_livre=${u.theme_livre}&nbpage=${u.nbr_pages_livre}&auteur=${u.nom_auteur}&editeur=${u.editeur}&prix=${u.prix_vente}">Edit</a>  	
   </td>

</tr>
</c:forEach>
</body>
</html>