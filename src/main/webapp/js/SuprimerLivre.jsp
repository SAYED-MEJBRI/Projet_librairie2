
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supprimer livre</title>
</head>
<body>
<h1>Supprimer livre</h1>
<sql:setDataSource var="db" 
 driver="com.mysql.jdbc.Driver"  
url="jdbc:mysql://localhost/librairie_db" 
 user="root" 
 password="" 
 /> 

 <sql:update dataSource="${db}" var="delete"> 
 delete from livre_tb where isbn=?;
 <sql:param value="${isbn}"/> 
 </sql:update>

  <p><c:out value="${ isbn}"/></p> 
 <p> le livre avec l'isbn : ${isbn} est  supprimer</p>
</body>

</html>