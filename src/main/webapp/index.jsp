
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>La Bibliothèque 
</title>
       <link rel="stylesheet" href="./ressources/css/style.css">
    </head>
    <body>
    <header>
        <div class="main">
            <div class="navbar">
                <div class="icon">
                    <h2 class="logo">La Bibliothèque</h2>
                </div>
                
                <div class="menu">
                    <ul class="menuderoulant">
                        <li><a href="./js/apropos.jsp">A Propos</a></li>
                        <li><a href="#">livre</a>
                            <ul class="sousmenu">
                                <li><a href="AfficherLivre">VOIR & EDITER</a></li>
                                <li><a href="AjoutLivre1">AJOUTER</a></li>
                           
                            </ul>
                        </li>
                        <li><a href="#">Fournisseur</a>
                            <ul class="sousmenu">
                                <li><a href="AfficherFournisseur">VOIR & EDITER</a></li>
                                <li><a href="AjouterFournisseur">AJOUTER</a></li>
                              
                            </ul>
                        </li>
                        <li><a href="#">Commande</a>
                            <ul class="sousmenu">
                                <li><a href="AfficherCommande">VOIR & EDITER</a></li>
                                <li><a href="AjouterCommande">AJOUTER</a></li>
                             
                            </ul>
                        </li>
                        
                        <li><a href="./js/contact.jsp">Contact</a></li>
                    </ul>
                </div>
            </div>
            </header>
            <main>
           <c:if test="${ page=='Voir' }">
			<jsp:include page="js/Voir_Livre.jsp"/>
			</c:if>
			 <c:if test="${ page=='Ajouter' }">
			<jsp:include page="js/Ajouter_livre.jsp"/>
			</c:if>
			<c:if test="${ page=='finaliserAjoutLivre' }">
			<jsp:include page="js/finaliserAjoutLivre.jsp"/>
			</c:if>
			<c:if test="${ page=='VoirF' }">
			<jsp:include page="js/AffivherFournisseur.jsp"/>
			</c:if>
			<c:if test="${ page=='AjouterF' }">
			<jsp:include page="js/AjouterFournisseur.jsp"/>
			</c:if>
			<c:if test="${ page=='VoirC' }">
			<jsp:include page="js/AfficherCommande.jsp"/>
			</c:if>
			<c:if test="${ page=='finaliserAjoutFourn' }">
			<jsp:include page="js/finaliserAjoutFourn.jsp"/>
			</c:if>
			<c:if test="${ page=='finaliserModifeirLivre' }">
			<jsp:include page="js/finaliserModifeirLivre.jsp"/>
			</c:if>
			<c:if test="${ page=='ModifierL' }">
			<jsp:include page="js/ModifierLivre.jsp"/>
			</c:if>
			<c:if test="${ page=='SupprimerL' }">
			<jsp:include page="js/SuprimerLivre.jsp"/>
			</c:if>
			<c:if test="${ page=='ModifierF' }">
			<jsp:include page="js/ModifierFournisseur.jsp"/>
			</c:if>
			<c:if test="${ page=='finaliserModifeirfourn' }">
			<jsp:include page="js/finaliserModifeirFournisseur.jsp"/>
			</c:if>
			<c:if test="${ page=='SupprimerF' }">
			<jsp:include page="js/SuprimerFournisseur.jsp"/>
			</c:if>
				<c:if test="${ page=='ModifierC' }">
			<jsp:include page="js/ModifierCommande.jsp"/>
			</c:if>
				<c:if test="${ page=='finaliserModifeirfCom' }">
			<jsp:include page="js/finaliserModifierCommande.jsp"/>
			</c:if>
			<c:if test="${ page=='SupprimerC' }">
			<jsp:include page="js/SuprimerCommande.jsp"/>
			</c:if>
			<c:if test="${ page=='AjouterC' }">
			<jsp:include page="js/AjouterCommande.jsp"/>
			</c:if>
			<c:if test="${ page=='finaliserAjoutCommande' }">
			<jsp:include page="js/finaliserAjoutCommande.jsp"/>
			</c:if>
			
           </main>
           <footer>
           </footer>
               
    </body>
    </html>