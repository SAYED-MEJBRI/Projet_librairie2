<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Supprimer Commande</title>
</head>
<body>
<h1>Supprimer Commande</h1>

<sql:setDataSource var="db" 
 driver="com.mysql.jdbc.Driver"  
url="jdbc:mysql://localhost/librairie_db" 
 user="root" 
 password="" 
 /> 

 <sql:update dataSource="${db}" var="delete"> 
 delete from commande_tb where id_commande=?;
 <sql:param value="${id_commande}"/> 
 </sql:update>

  <p><c:out value="${ id_commande}"/></p> 
 <p> la commande numéro  : ${id_commande} est  supprimer</p>
</body>
</html>