CREATE DATABASE IF NOT EXISTS test;
USE test;

CREATE TABLE utenti (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
);

-- Inserisci un utente di esempio
INSERT INTO utenti (username, password) 
VALUES 
('marco', 'orso'),
('piero', 'tavolo'),
('viola', 'sedia');

