-- Creare un nuovo database
CREATE DATABASE IF NOT EXISTS studenti;
USE studenti;

-- Creare la tabella dei corsi di studi
CREATE TABLE IF NOT EXISTS corso_studi (
    codice INT AUTO_INCREMENT PRIMARY KEY,
    nome_corso VARCHAR(30) NOT NULL
);

-- Inserire alcuni dati nella tabella dei corso di studi
INSERT INTO corso_studi(codice, nome_corso)
VALUES
    ('liceo aristico'),
    ('liceo scientifico'),
    ('liceo linguistico');

SELECT * FROM corso_studi;

-- Creare la tabella delle discipline
CREATE TABLE IF NOT EXISTS disciplina (
    codice_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(30) NOT NULL
);

-- Inserire alcuni dati nella tabella delle discipline
INSERT INTO disciplina(codice_disciplina, nome_disciplina)
VALUES
    ('arte'),
    ('matematica'),
    ('italiano'),
    ('inglese');

SELECT * FROM disciplina;

-- Creare la tabella degli studenti
CREATE TABLE IF NOT EXISTS studenti (
    matricola INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(20) NOT NULL,
    cognome VARCHAR(30) NOT NULL,
    data_nascita DATE,
    FK_corso INT,
    capo_g INT,
    FOREIGN KEY(FK_corso) REFERENCES corso_studi(codice)
);


-- Inserire alcuni dati nella tabella degli studenti
INSERT INTO studenti(matricola, nome, cognome, data_nascita, capo_g)
VALUES
    (01,'Manuel','Rossi',15-03-2004,03),
    (02,'Daniele' 'Menicucci',09-02-2007,02),
    (03,'Alessandro' 'Santoro',26-02-2007,01);

SELECT * FROM studenti;


-- Creare la tabella delle valutazioni
CREATE TABLE IF NOT EXISTS valutazioni (
    codice_val INT AUTO_INCREMENT PRIMARY KEY,
    voto INT,
    data_voto DATE,
    FK_studenti INT,
    FK_disc INT,
    FOREIGN KEY(FK_studenti) REFERENCES studenti(matricola),
    FOREIGN KEY(FK_disc) REFERENCES disciplina(codice_disciplina)
);


-- Inserire alcuni dati nella tabella delle valutazioni
INSERT INTO valutazioni(FK_studenti, voto, data_voto)
VALUES
    ( 01 ,7, 2004-03-15),
    ( 02,8, 2007-02-09),
    ( 02,9, 2007-02-26);

SELECT * FROM valutazioni;


SELECT s.cognome, v.voto 
FROM studenti s, valutazioni v
WHERE s.matricola = v.FK_studenti;

SELECT max(voto), min(voto), avg(voto)
FROM valutazioni v, studenti s
WHERE s.matricola = v.FK_studenti
AND s.cognome = 'Santoro';

SELECT count(*) FROM studenti

SELECT count(voto) FROM valutazioni


SELECT s.cognome, v.disciplina, v.voto, YEAR(CURDATE()) - YEAR(s.data_nascita) AS eta --La funzione curdate è utilizzata per ottenere la data corrente nel formato YYYY-MM-DD. 
FROM  Studenti s
JOIN  Voti v ON s.matricola = v.matricola
WHERE s.cognome LIKE 'S%';  


SELECT s.cognome, COUNT(v.voto) AS numero_voti, AVG(v.voto) AS media_voti, MAX(v.voto) AS voto_piu_alto, MIN(v.voto) AS voto_piu_basso
FROM Studenti s
JOIN Voti v ON s.matricola = v.matricola
WHERE s.matricola = '1' 

SELECT COUNT(*) AS studenti_over_18
FROM Studenti
WHERE YEAR(CURDATE()) - YEAR(data_nascita) > 18;

SELECT s.cognome
FROM Studenti s
LEFT JOIN Voti v ON s.matricola = v.matricola
WHERE v.matricola IS NULL;


SELECT cognome, data_nascita
FROM studenti;

SELECT nome
FROM Studenti
WHERE cognome = 'Rossi';

SELECT YEAR(CURDATE()) - YEAR(data_nascita) AS età
FROM Studenti
WHERE matricola = '1';
--YEAR(CURDATE()) - YEAR(data_nascita) Questa operazione calcola la differenza tra l'anno corrente e l'anno di nascita. 


SELECT cognome
FROM studenti
WHERE s.cognome LIKE 'M%';  

SELECT s.cognome, COUNT(v.voto) AS numero_voti
FROM studenti s
JOIN Voti v ON s.matricola = v.matricola
WHERE s.matricola = '1' 

SELECT s.cognome, COUNT(v.voto) AS numero_voti
FROM studenti s 
JOIN Voti v ON s.matricola = v.matricola
WHERE cognome = 'Rossi';

