<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fianliser l'enregistrement d'un commande</title>
</head>
<body>
<h1>Fianliser l'enregistrement d'un commande</h1>
<p>                                                            
<% 
int codes1=(Integer) request.getAttribute("codes1");
long isbns1 =(Long)request.getAttribute("isbns1");
String  data_achat= (String) request.getAttribute("data_achat");
double prix = (Double) request.getAttribute("prix");
int nb_exemplaires1 = (Integer)request.getAttribute("nb_exemplaires1");
 
%>
<c:out value="hhhhh${data_achat}"/>
<c:out value="${isbns1}"/>
<c:out value="la Commande est ajoutée avec succées"/>
</p>  
<sql:setDataSource var="db" 
 driver="com.mysql.jdbc.Driver" 
 url="jdbc:mysql://localhost/librairie_db" 
user="root" 
password="" 
 /> 
  <sql:update dataSource="${db}" var="add"> 
 insert into commande_tb ( 	isbn, code_fournisseur, data_achat, prix_achat, nb_exemplaires) 
 values( ?, ?, ?,  ?, ?); 
  <sql:param value="${isbns1}"/> 
 <sql:param value="${codes1}"/>  
  <sql:param value="${data_achat}"/> 
  <sql:param value="${prix}"/> 
  <sql:param value="${nb_exemplaires1}"/>  
  </sql:update>  
</body>
</html>