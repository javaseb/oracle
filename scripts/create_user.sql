/* 
Script qui permet de créer un usager et de lui donner les droits de créer une session (afin qu'il puisse se connecter correctement)
Sébastien Charland
*/
CREATE USER charlands -- nom d'utilisateur
	IDENTIFIED BY seb -- «seb» est son mot de passe 
	PASSWORD EXPIRE --devra entrer son mot de passe lors de la première connexion
	PROFILE app_user -- le profil doit avoit été créé préalablement
    DEFAULT TABLESPACE tbs_01 --l'espace de table (nommé tbs_01)
    QUOTA 10M ON tbs_01  --maximum de 10M permis dans l'espace de table
    -- TEMPORARY TABLESPACE temp
     QUOTA 5M ON system --maximum de données sur le système
	 ACCOUNT LOCK; --verouille le compte
grant create session to charlands; -- donne les droits à l'usager de créer une session lors de connections.
	