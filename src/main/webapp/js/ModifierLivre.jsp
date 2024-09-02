<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modifier livre</title>
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
<h1>Modifier livre
</h1>


<form id="form" class="form" method="get" action="ModifierL2" style="text-align: center">

<input type="number" name="isbn" id="isbn" value="${ isbn}" class="form-Control"
                    readonly="readonly"  ><br>
<!--                      <button type="button" class="btnn" onclick="chercher()" >Chercher</button><br> -->
                    <input type="text" name="name" id="name" value="${ name}" class="form-Control"
                        placeholder="@Titre du livre"><br>
                        <input type="text" name="theme" id="theme" value="${theme}" class="form-Control"
                        placeholder="@Thème du livre"><br>
                    <input type="number" name="nb_page" id="nb_page" value="${nb_page}" class="form-Control" placeholder="@Nombre de page"><br>
                    <input type="text" name="a_name" id="a_name" value="${auteur}"class="form-Control" placeholder="@Auteur"><br>
                    <input type="text" name="editeur" id="editeur" value="${ editeur}" class="form-Control" placeholder="@Editeur"><br>
                    <input type="number" name="prix" id="prix" value="${ prix}" class="form-Control"
                    placeholder="@prix"><br>
                    <button type="submit" class="btnn">Modifier</button>
                </form>
<!--                <script>  -->

<!-- </script>  -->


</body>
</html>