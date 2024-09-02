
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fianliser l'enregistrement d'un livre</title>
</head>
<body>
<h1>Fianliser l'enregistrement d'un livre</h1>
<p>
<%
String nom= (String) request.getAttribute("nom");

long isbn1=(Long) request.getAttribute("isbn1");
int nb_page1=(Integer) request.getAttribute("nb_page1");
String theme=(String) request.getAttribute("theme");
double prix1=(Double) request.getAttribute("prix1");
 String a_name=(String) request.getAttribute("a_name");
 String editeur=(String) request.getAttribute("editeur");
%>
<c:out value="isbn et :${isbn1}"/>
<c:out value="nom et :${nom}"/>
<c:out value="prix :${prix1}"/>
<c:out value="nom editeur :${a_name}"/>
<c:out value="nom et :${editeur}"/>
<c:out value="theme :${theme}"/>
<c:out value="le nombre de page est  :${nb_page1}"/>
<%-- <c:out value="le nom du livre est :${nom} sont isbn est ${isbn1} sont editeur est ${editeur} et sont prix est ${prix2} et le nombre de page et ${nb_page2}"/> --%>
</p>
<sql:setDataSource var="db" 
driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost/librairie_db"
user="root"
password=""
/>
<sql:update dataSource="${db}" var="add">
insert into livre_tb ( 	isbn, titre_livre, theme_livre, nbr_pages_livre, nom_auteur, editeur, prix_vente)
values( ?, ?, ?,  ?, ?, ?, ?);

<sql:param value="${isbn1}"/>
<sql:param value="${nom}"/>
<sql:param value="${theme}"/>
<sql:param value="${nb_page1}"/>
<sql:param value="${a_name}"/>
<sql:param value="${editeur}"/>
<sql:param value="${prix1}"/>
</sql:update>
</body>
</html>