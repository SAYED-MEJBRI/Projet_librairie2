

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajout d'un fournisseur</title>

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

.form input {
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
    
                 <form id="form" class="form" method="get" action="EnregiterFournisseur" style="text-align: center">
                    <h2>Ajout d'un fournisseur </h2>
                    <input type="number" name="code" id="code" class="form-Control"
                    placeholder="@Code fournisseur"><br>
                    <input type="text" name="raison" id="raison" class="form-Control"
                        placeholder="@Raison social"><br>
                        <input type="text" name="localite" id="localite" class="form-Control"
                        placeholder="@Localite"><br>
                    <input type="text" name="pays" id="pays" class="form-Control" placeholder="@Pays"><br>
                    <input type="text" name="mobile" id="mobile" class="form-Control" placeholder="@Mobile fournisseur"><br>
                    <input type="text" name="email" id="email" class="form-Control"
                    placeholder="@Email fournisseur"><br>
                    <button type="submit" class="btnn">Enregistrer</button>
                </form>
                
    
</body>

</html>