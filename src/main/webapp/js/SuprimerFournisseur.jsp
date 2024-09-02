<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Supprimer Fournisseur</title>
</head>
<body>
<h1>Supprimer Fournisseur</h1>

<sql:setDataSource var="db" 
 driver="com.mysql.jdbc.Driver"  
url="jdbc:mysql://localhost/librairie_db" 
 user="root" 
 password="" 
 /> 

 <sql:update dataSource="${db}" var="delete"> 
 delete from fournisseur_tb where code_fournisseur=?;
 <sql:param value="${code_fournisseur}"/> 
 </sql:update>

  <p><c:out value="${ code_fournisseur}"/></p> 
 <p> le Fournisseur avec le code fournisseur  : ${code_fournisseur} est  supprimer</p>
</body>
</html>