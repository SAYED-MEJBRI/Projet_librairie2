
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fianliser la modification  de la commande</title>
</head>
<body>
<h1>Fianliser la modification de la commande</h1>
<p>
<%
String raison_social= (String) request.getAttribute("raison_social");

int id_commande1=(Integer) request.getAttribute("id_commande1");
double prix_achat1=(Double) request.getAttribute("prix_achat1");
int nb_exemplaires1=(Integer) request.getAttribute("nb_exemplaires1");

String data_achat=(String) request.getAttribute("data_achat");


%>


 <c:out value="la commande numéro :${id_commande1}  est modifier"/> 
</p>
<sql:setDataSource var="db" 
driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost/librairie_db"
user="root"
password=""
/>
<sql:update dataSource="${db}" var="update">
update commande_tb set	 data_achat=?, prix_achat=?, nb_exemplaires=? where id_commande="${id_commande1}";




<sql:param value="${data_achat}"/>
<sql:param value="${prix_achat1}"/>
<sql:param value="${nb_exemplaires1}"/>

</sql:update>
</body>
</html>