-- DROP DATABASE IF EXISTS ES05;
CREATE DATABASE IF NOT EXISTS ES05;
USE ES05; SHOW DATABASES;



-- DROP USER IF EXISTS dani_meni@localhost;
CREATE USER IF NOT EXISTS dani_meni@localhost IDENTIFIED BY 'Forzainter07';
-- ALTER USER dani_meni@localhost IDENTIFIED BY 'nuova_password';
SELECT user, host FROM mysql.user;
GRANT SELECT, INSERT, UPDATE, DELETE ON ES05.* TO dani_meni@localhost;
-- GRANT ALL ON ES05.* TO dani_meni@localhost;
SHOW GRANTS FOR dani_meni@localhost; -- fa vedere i priilegi che puo fare questo utente che sono SELECT, INSERT, UPDATE, DELETE ON ES05

-- DROP TABLE IF EXISTS utente;
CREATE TABLE IF NOT EXISTS utente (
  UserID INT NOT NULL AUTO_INCREMENT ,
  Username VARCHAR(64) NOT NULL UNIQUE,
  Password VARCHAR(64) NOT NULL ,
  PRIMARY KEY (UserID)
)AUTO_INCREMENT=1000; --fa partire gli attributi AUTO_INCREMENT da 1000
SHOW TABLES;
SHOW CREATE TABLE utente;

INSERT INTO utente (UserID, Username, Password 
) VALUES (NULL, 'meni', 'calcio');

INSERT INTO utente VALUES 
(NULL, 'bagli', 'storto'),
(NULL, 'santo', 'pelato');

SELECT * FROM utente;

