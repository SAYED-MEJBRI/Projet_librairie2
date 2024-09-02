<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fianliser l'enregistrement d'un fournisseur</title>
</head>
<body>
<h1>Fianliser l'enregistrement d'un fournisseur</h1>
<p>
<%
int code1=(Integer) request.getAttribute("code1");
String raison= (String) request.getAttribute("raison");
String localite= (String) request.getAttribute("localite");


String pays=(String) request.getAttribute("pays");

 String mobile=(String) request.getAttribute("mobile");
 String email=(String) request.getAttribute("email");
%>

<c:out value="le fournisseur:${raison} ou sont code est ${code1} sont localité à ${localite} et sont paysest ${pays} sont mobile ${mobile} est ajouté avec succées"/>
</p> 
<sql:setDataSource var="db" 
driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost/librairie_db"
user="root"
password=""
/>
<sql:update dataSource="${db}" var="add">
insert into fournisseur_tb ( 	code_fournisseur, raison_social, localite, pays, tel_fournisseur, email_fournisseur	)
values( ?, ?, ?,  ?, ?, ?);

<sql:param value="${code1}"/>
<sql:param value="${raison}"/>
<sql:param value="${localite}"/>
<sql:param value="${pays}"/>
<sql:param value="${mobile}"/>
<sql:param value="${email}"/>
</sql:update>
</body>
</html>