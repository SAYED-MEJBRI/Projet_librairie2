<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>À propos de l'application</title>
<style>
/* Style général pour le corps de la page */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    line-height: 1.6;
}

/* Conteneur principal pour centrer le contenu */
.container {
    width: 80%;
    margin: 0 auto;
    padding: 20px;
}

/* Titres */
h1, h2 {
    color: #333;
    text-align: center;
}

/* Listes de contacts */
ul {
    list-style-type: none;
    padding: 0;
}

ul li {
    padding: 10px;
    background: #f4f4f4;
    margin: 5px 0;
    border-radius: 5px;
}

ul li a {
    color: #007BFF;
    text-decoration: none;
}

ul li a:hover {
    text-decoration: underline;
}

/* Formulaire de contact */
form {
    background: #f9f9f9;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
}

input[type="text"],
input[type="email"],
textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

input[type="submit"] {
    background: #007BFF;
    color: #fff;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 5px;
    font-size: 16px;
}

input[type="submit"]:hover {
    background: #0056b3;
}

/* Styles spécifiques pour les petits écrans */
@media (max-width: 768px) {
    .container {
        width: 95%;
        padding: 10px;
    }
    
    ul li {
        font-size: 14px;
    }
    
    form {
        padding: 10px;
    }
    
    input[type="text"],
    input[type="email"],
    textarea {
        font-size: 14px;
    }
}
</style>
</head>
<body>
<h1>À propos de l'application</h1>
<p>Cette application a été développée dans le cadre d'un projet d'évolution d'une application Java existante. L'objectif était de rendre l'application accessible via le web en utilisant les technologies Java EE, les pages JSP, et les servlets.</p>

<h2>Auteur</h2>
<p><strong>Nom :</strong> Sayed Mejbri</p>
<p><strong>Centre de formation :</strong> Mode83</p>

<h2>Technologies utilisées</h2>
<ul>
    <li><strong>IDE :</strong> Eclipse</li>
    <li><strong>Langage :</strong> Java EE</li>
    <li><strong>Framework :</strong> JSP (JavaServer Pages)</li>
    <li><strong>Base de données :</strong> MySQL</li>
    <li><strong>Serveur d'application :</strong> Apache Tomcat</li>
</ul>

<h2>Fonctionnalités de l'application</h2>
<p>L'application permet de gérer une librairie avec les fonctionnalités suivantes :</p>
<ul>
    <li>Afficher la liste des livres disponibles.</li>
    <li>Ajouter, modifier, et supprimer des livres.</li>
    <li>Rechercher des livres par différents critères.</li>
</ul>

<h2>Architecture de l'application</h2>
<p>L'application suit une architecture modèle-vue-contrôleur (MVC) pour séparer la logique métier, la présentation et la gestion des données :</p>
<ul>
    <li><strong>Modèle :</strong> Gestion des données avec des objets Java et des requêtes SQL.</li>
    <li><strong>Vue :</strong> Pages JSP pour afficher les données et interagir avec l'utilisateur.</li>
    <li><strong>Contrôleur :</strong> Servlets pour gérer les requêtes HTTP et la logique applicative.</li>
</ul>

<h2>Base de données</h2>
<p>La base de données utilisée est MySQL, avec les tables suivantes :</p>
<ul>
    <li><strong>livre_tb :</strong> Contient les informations sur les livres (ISBN, titre, thème, nombre de pages, nom de l'auteur, éditeur, prix).</li>
</ul>

<h2>Conclusion</h2>
<p>Ce projet a permis de moderniser une application Java existante, en la rendant accessible via une interface web. Le choix des technologies Java EE, JSP, et servlets s'est avéré pertinent pour répondre aux besoins du projet, tout en garantissant une évolutivité future.</p>

<p>Merci pour votre attention.</p>

</body>
</html>
