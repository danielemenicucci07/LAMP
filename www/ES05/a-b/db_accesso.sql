-- DROP DATABASE IF EXISTS ES05;
CREATE DATABASE IF NOT EXISTS ES05;
USE ES05; SHOW DATABASES;


-- DROP USER IF EXISTS ES05_user@localhost;
CREATE USER IF NOT EXISTS ES05_user IDENTIFIED BY 'forzainter';
-- ALTER USER ES05_user@localhost IDENTIFIED BY 'nuova_password';
SELECT user, host FROM mysql.user;
GRANT SELECT, INSERT, UPDATE, DELETE ON ES05.* TO ES05_user;
-- GRANT ALL ON ES05.* TO ES05_user@localhost;
SHOW GRANTS FOR ES05_user;

-- DROP TABLE IF EXISTS utente;
CREATE TABLE IF NOT EXISTS utente (
  UserID INT NOT NULL AUTO_INCREMENT ,
  Username VARCHAR(64) NOT NULL UNIQUE,
  Password VARCHAR(64) NOT NULL ,
  PRIMARY KEY (UserID)
)AUTO_INCREMENT=1000;

INSERT INTO utente (UserID, Username, Password 
) VALUES (NULL, 'utente', 'prova');

INSERT INTO utente VALUES 
(NULL, 'mrossi', '123'),
(NULL, 'admin', 'admin'),
(NULL, 'daniele', 'babbo'),
(NULL, 'ES05_user', 'pass');

SELECT * FROM utente;