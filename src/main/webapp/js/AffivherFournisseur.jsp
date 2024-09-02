
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste des fournisseur</title>
</head>
<body>
<h1>la liste des fournisseurs
</h1>
<sql:setDataSource var="db" 
driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost/librairie_db"
user="root"
password=""
/>
<sql:query dataSource="${db}" var="rs">
select * from fournisseur_tb;
</sql:query>
<table  border="2" width= "100%">
<tr>
<th>Code </th>
<th>Raison Social </th>
<th>Localité</th>
<th>Pays</th>
<th>NMobile </th>
<th>Email</th>
<th>Modifier</th>
<th>Supprimer</th>
</tr>
<c:forEach items="${rs.rows}" var="u">
<tr>
<td>${u.code_fournisseur}</td>
<td>${u.raison_social}</td>
<td>${u.localite}</td>
<td>${u.pays}</td>
<td>${u.tel_fournisseur}</td>
<td>${u.email_fournisseur}
</td>
<td>
<a href="EditFourn?code_fournisseur=${u.code_fournisseur}&raison_social=${u.raison_social}&localite=${u.localite}&pays=${u.pays}&tel_fournisseur=${u.tel_fournisseur}&email_fournisseur=${u.email_fournisseur}">Edit</a>  	
   </td>
<td>
<a href="DeleteFourn?code_fournisseur=${u.code_fournisseur}">Delete</a>
</td>
</tr>
</c:forEach>
</body>
</html>