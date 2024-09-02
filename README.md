# Projet de Gestion de Bibliothèque (Version Web)

## Description

Ce projet est une évolution de l'application Java initialement développée sur Eclipse. Nous avons transformé cette application de bureau en une version web, accessible via un navigateur. Cette version web conserve toutes les fonctionnalités essentielles de gestion des livres, des commandes et des fournisseurs, tout en offrant une interface utilisateur plus conviviale et une accessibilité accrue.

## Versions

- **IDE** : Eclipse Version 2024-06 (4.32.0)
- **Java** : Java version "22.0.1" (2024-04-16)
- **Serveur Web** : Apache Tomcat 9.0
- **Bibliothèques** : JSTL, Servlets, JSP

## Structure du Projet

Le projet est organisé en trois packages principaux :

### 1. Package `connection`

Ce package contient la classe **`SingletonConnectionBDD`**. Cette classe gère la connexion à la base de données en utilisant le pattern Singleton, garantissant ainsi qu'une seule connexion reste ouverte pour toutes les opérations de l'application.

### 2. Package `model`

Ce package contient trois classes principales, chacune représentant une table de la base de données :

- **`Commande`** : Gère les commandes passées par la bibliothèque.
- **`Fournisseur`** : Gère les informations des fournisseurs de la bibliothèque.
- **`Livre`** : Gère les informations des livres disponibles dans la bibliothèque.

### 3. Package `web`

Ce package contient les servlets et les pages JSP qui gèrent l'interaction avec l'utilisateur à travers l'interface web :

- **`LivreServlet`** : Gère les requêtes liées à la gestion des livres.
- **`CommandeServlet`** : Gère les requêtes liées à la gestion des commandes.
- **`FournisseurServlet`** : Gère les requêtes liées à la gestion des fournisseurs.
- **Pages JSP** : Pages dynamiques permettant l'affichage des données et l'interaction avec l'utilisateur.

## Fonctionnalités

- **Gestion des Livres** : Ajouter, modifier, supprimer et consulter les livres disponibles dans la bibliothèque.
- **Gestion des Commandes** : Suivre et gérer les commandes passées par la bibliothèque.
- **Gestion des Fournisseurs** : Gérer les informations relatives aux fournisseurs de livres et autres produits.

## Configuration et Installation

```bash
git clone https://github.com/SAYED-MEJBRI/Gestion-de-Bibliotheque-Web.git
```


##  Prérequis
- Java JDK 22.0.1 ou supérieur
- Eclipse IDE (Version 2024-06 ou plus récente)
- MySQL (version 5.x ou supérieure)
- Apache Tomcat 9.0
## Configuration de la base de données
- Créez une base de données MySQL.
- Importez le fichier SQL fourni dans le dossier DataBase du projet pour créer les tables nécessaires.
##  Déploiement sur Tomcat
- Importez le projet dans Eclipse.
- Configurez Tomcat 9.0 dans Eclipse.
- Déployez et exécutez l'application sur Tomcat.
##  Auteurs
Sayed Mejbri - Développeur principal
