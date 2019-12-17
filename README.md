# BACKEND STARTER

https://bitbucket.org/pbaccara/epices_test_back/src/master/

## Sujet

Une installation photovoltaïque dispose d'un appareil appelé "datalogger" qui nous transmet chaque jour des données sur la production de la veille.

Cette installation photovoltaïque est composée de 2 onduleurs.

Les données sont transmises en format CSV. Elles contiennent la production horaire de chaque onduleur.

Le but de l'application est, à partir des fichiers de production, de disposer dans la base de données :

 - des données horaires de chaque onduleur
 - des données consolidées (somme des énergies) sur la journée pour l'ensemble du système

Une interface web simple (pas de mise en forme CSS demandée) qui permet :

 - d'envoyer un fichier CSV à charger
 - de voir la production totale d'une journée (au choix de l'utilisateur) pour l'ensemble du système avec le total et la production par heure

##  TO DO LIST

 - création de la base de donnée : OK
 - enregistrement d'un fichier CSV dans la base de donnée : OK
 - prévisualisation de données avant import : OK
 - affichage de données au choix de l'utilisateur : TO DO
 - empêcher enregistrement de doublons de données : TO DO
 - tests : TO DO
 - optimisation requêtes base de données : TO DO
 
