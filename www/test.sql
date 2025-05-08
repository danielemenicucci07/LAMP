CREATE DATABASE IF NOT EXISTS test;
USE test;

CREATE TABLE nomi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
);

-- Inserisci un utente di esempio
INSERT INTO nomi (username, password) 
VALUES 
('filippo', 'orso'),
('piero', 'tavolo'),
('viola', 'sedia');

