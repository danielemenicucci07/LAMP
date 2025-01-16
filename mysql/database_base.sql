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
INSERT INTO disciplina(codice, nome_disciplina)
VALUES
    ('arte'),
    ('matematica'),
    ('italiano'),
    ('inglese');

SELECT * FROM disciplina;

-- Creare la tabella degli studenti
CREATE TABLE IF NOT EXISTS studenti (
    matricola INT AUTO_INCREMENT PRIMARY KEY,
    cognome VARCHAR(30) NOT NULL,
    data_nascita DATE,
    FK_corso FOREIGN KEY
    capo_g INT
    FOREIGN KEY(FK_corso) REFERENCES corso_studi(codice)
);


-- Inserire alcuni dati nella tabella degli studenti
INSERT INTO studenti(matricola, cognome, data_nascita, capo_g)
VALUES
    ('rossi',15-03-2004,03),
    ('menicucci',09-02-2007,02),
    ('santoro',26-02-2007,01);

SELECT * FROM studenti;


-- Creare la tabella delle valutazioni
CREATE TABLE IF NOT EXISTS valutazioni (
    codice_val INT AUTO_INCREMENT PRIMARY KEY,
    voto INT,
    data_voto DATE,
    FK_studenti FOREIGN KEY
    FK_disc INT
    FOREIGN KEY(FK_studenti) REFERENCES studenti(matricola)
    FOREIGN KEY(FK_disc) REFERENCES disciplina(codice_disciplina)
);


-- Inserire alcuni dati nella tabella delle valutazioni
INSERT INTO valutazioni(matricola, voto, data_voto)
VALUES
    ( 8 , 15-03-2004),
    ( 9, 09-02-2007),
    ( 7,26-02-2007);

SELECT * FROM valutazioni;


