<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modifier Fournisseur</title>
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
<h1>Modifier Fournisseeur
</h1>


<form id="form" class="form" method="get" action="ModifierFournissuer" style="text-align: center">

<input type="number" name="code_fournisseur" id="code_fournisseur" value="${code_fournisseur}" class="form-Control"
                    readonly="readonly"  ><br>

                    <input type="text" name="raison_social" id="raison_social" value="${raison_social}" class="form-Control"
                        placeholder="@Raison social"><br>
                        <input type="text" name="localite" id="localite" value="${localite}" class="form-Control"
                        placeholder="@Localite"><br>
                    <input type="text" name="pays" id="pays" value="${pays}" class="form-Control" placeholder="@Pays"><br>
                    <input type="text" name="tel_fournisseur" id="tel_fournisseur" value="${tel_fournisseur}"class="form-Control" placeholder="@Mobile fournisseur"><br>
                    <input type="text" name="email_fournisseur" id="email_fournisseur" value="${email_fournisseur}" class="form-Control" placeholder="@Email Fournisseur"><br>
                    
                    <button type="submit" class="btnn">Modifier</button>
                </form>


</body>
</html>