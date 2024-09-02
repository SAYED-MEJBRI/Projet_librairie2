
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fianliser la modification  d'un fournisseur</title>
</head>
<body>
<h1>Fianliser la modification d'un fournisseur</h1>
<p>
<%
String raison_social= (String) request.getAttribute("raison_social");

int code_fournisseur1=(Integer) request.getAttribute("code_fournisseur1");

String localite=(String) request.getAttribute("localite");

 String pays=(String) request.getAttribute("pays");
 String tel_fournisseur=(String) request.getAttribute("tel_fournisseur");
 String email_fournisseur=(String) request.getAttribute("email_fournisseur");
%>


 <c:out value="le fournisseurt :${raison_social} de localiter ${localite} sont pays ${pays} sont mobile est ${tel_fournisseur} et sont Email est ${email_fournisseur} est modifier"/> 
</p>
<sql:setDataSource var="db" 
driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost/librairie_db"
user="root"
password=""
/>
<sql:update dataSource="${db}" var="update">
update fournisseur_tb set	 raison_social=?, localite=?, pays=?, tel_fournisseur=?, email_fournisseur=? where code_fournisseur="${code_fournisseur1}";



<sql:param value="${raison_social}"/>
<sql:param value="${localite}"/>
<sql:param value="${pays}"/>
<sql:param value="${tel_fournisseur}"/>
<sql:param value="${email_fournisseur}"/>

</sql:update>
</body>
</html>