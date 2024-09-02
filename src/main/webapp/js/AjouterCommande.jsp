<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajouter Commande</title>
<style type="text/css">

.form h2 {
/*     width: 480px; */
    font-family: sans-serif;
    text-align: center;
    color: #ff7200;
    font-size: 22px;
/*     background-color: #fff; */
    border-radius: 10px;
    margin: 2px;
    padding: 8px;
}

.form input, select, label {
    width: 480px;
    height: 35px;
    background: transparent;
    border-bottom: 1px solid #ff7200;
    border-top: none;
    border-right: none;
    border-left: none;
    color: #fff;
    font-size: 15px;
    letter-spacing: 1px;
    margin-top: 30px;
    font-family: sans-serif;
}

.form  select{
background: blue;
}

.form input:focus {
    outline: none;
}

::placeholder {
    color: #fff;
    font-family: Arial;
}

.btnn {
    width: 480px;
    height: 40px;
    background: #ff7200;
    border: none;
    margin-top: 30px;
    font-size: 18px;
    border-radius: 10px;
    cursor: pointer;
    color: #fff;
    transition: 0.4s ease;
}

.btnn:hover {
    background: #fff;
    color: #ff7200;
}

.btnn a {
    text-decoration: none;
    color: #000;
    font-weight: bold;
}
</style>
</head>
<body>
<h1>Ajouter Commande
</h1>
<p><c:out value="${ isbn}"/></p> 

 <sql:setDataSource var="db"  
 driver="com.mysql.jdbc.Driver" 
 url="jdbc:mysql://localhost/librairie_db" 
 user="root"    
 password="" 
 /> 
 <sql:query dataSource="${db}" var="rs"> 
 select * from livre_tb ; 
 </sql:query> 
 <sql:query dataSource="${db}" var="rs1"> 
 select * from fournisseur_tb ; 
 </sql:query> 
<%--     --%>


 <form id="form" class="form" method="get" action="finaliserAjoutCommande" style="text-align: center"> 
						<lebel>Choisir livre </lebel><br>
						<select name="isbns">
   						 <c:forEach var="i" items="${rs.rows}">
   						  <option>${i.isbn}</option>
		  					 		</c:forEach>
							</select><br>
							<lebel>Choisir Fournisseur </lebel><br>
							<select id="code" name="codes">
 						   <c:forEach var="i1" items="${rs1.rows}">
    						 <option >${i1.code_fournisseur}</option>
    						</c:forEach>
							</select><br>
                      <p><c:out value= "le numero de isbn est :${i.isbn}"/></p>
                    <input type="date" name="data_achat" id="data_achat"  class="form-Control" placeholder="@Date d'achat"><br>
                    <input type="text" name="prix_achat" id="prix_achat" class="form-Control" placeholder="@Prix d'achat"><br>
                    <input type="text" name="nb_exemplaires" id="nb_exemplaires"  class="form-Control" placeholder="@Nombre d'exemplairer"><br>
                    
                    <button type="submit" class="btnn">Enregistrer</button>
                    
                </form>


</body>
</html>