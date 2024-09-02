<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
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
<h1>Contact</h1>
<p>Pour toute question ou information supplémentaire, n'hésitez pas à me contacter :</p>

<h2>Coordonnées</h2>
<ul>
    <li><strong>Email :</strong> <a href="mailto:smejbri4@gmail.com">smejbri4@gmail.com</a></li>
    <li><strong>Téléphone :</strong> 0662017833</li>
</ul>

<h2>Formulaire de Contact</h2>
<form action="EnvoyerMessage" method="post">
    <label for="nom">Nom :</label><br>
    <input type="text" id="nom" name="nom" required><br><br>
    
    <label for="email">Email :</label><br>
    <input type="email" id="email" name="email" required><br><br>
    
    <label for="sujet">Sujet :</label><br>
    <input type="text" id="sujet" name="sujet" required><br><br>
    
    <label for="message">Message :</label><br>
    <textarea id="message" name="message" rows="5" required></textarea><br><br>
    
    <input type="submit" value="Envoyer">
</form>

</body>
</html>
