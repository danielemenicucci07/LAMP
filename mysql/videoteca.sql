-- Creare un nuovo database
CREATE DATABASE IF NOT EXISTS videoteca;
USE videoteca;

-- Creare la tabella dei film
CREATE TABLE IF NOT EXISTS film (
    id_film INT AUTO_INCREMENT PRIMARY KEY,
    titolo VARCHAR(30) NOT NULL,
    anno_uscita YEAR,
    durata_minuti INT,
    genere VARCHAR (30),
    id_regista INT,
    FOREIGN KEY (id_regista) REFERENCES regista(id_regista)
);

-- Inserire alcuni dati nella tabella dei film
INSERT INTO film (id_film,titolo, anno_uscita, durata_minuti,genere)
VALUES 
  ('il padrino',1972,175,'drammatico'),
  ('titanic',1997,194,'romantico'),
  ('la carica dei 101',1961,79,'per famiglie'),
  ('avatar',2009,162,'fantascienza'),
  ('pulp fiction',1994,154,'crime');

  SELECT * FROM film;

-- Creare la tabella degli registi
CREATE TABLE IF NOT EXISTS registi (
    id_registi INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    nazionalita VARCHAR(30),
    film_esordio VARCHAR(30),
    data_nascita DATE,
    data_morte DATE  
);

-- Inserire alcuni dati nella tabella degli registi 
INSERT INTO registi (nome, nazionalita, film_esordio, data_nascita, data_morte,)
VALUES
('Alfred Hitchcock', 'Britannica', 'The Pleasure Garden' 13-08-1899,29-04-1980),
('James Cameron','Canadese','The Terminator'16-08-1954),
('Wolfgang Reitherman','statunitense','La spada nella roccia'26-06-1909,22-05-1985),
('J. M. Barrie','britannico',' Peter Pan'9-05-1860,19-06-1937),
(' Federico Fellini','Italiana','Luci del varietà',20-01-1920, 31-10-1993);

SELECT * FROM registi;


-- Creare la tabella dei generi
CREATE TABLE IF NOT EXISTS genere (
    id_genere INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

-- Inserire alcuni dati nella tabella dei generi
INSERT INTO genere (nome)
VALUES
(sci-fi)
(romantico)
(per famiglie);


-- Creare la tabella dei clienti
CREATE TABLE IF NOT EXISTS clienti (
    matricola INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    data_nascita DATE,
    FOREIGN KEY (id_film) REFERENCES film(id_film)
);

-- Inserire alcuni dati nella tabella degli registi 
INSERT INTO clienti (nome,cognome,email,data_nascita)
VALUES
('marco','rossi','marcorossi@gmail.com',20-03-1986),
('giulia','bianchi','giulietta05@gmail.com',19-05-1956),
('giorgio','verdi','gio_verdi@gmail.it',),
('martina','gialli','marty_99@gmail.it');

-- Verifico il corretto inserimento dei dati
SELECT * FROM clienti;

-- Creare la tabella degli affitti
CREATE TABLE IF NOT EXISTS affiti (
    id_affitto INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_film INT,
    data_inizio DATE,
    data_fine DATE,
    FOREIGN KEY (id_cliente) REFERENCES clienti(matricola),
    FOREIGN KEY (id_film) REFERENCES film (id_film);
);

-- Inserire alcuni dati nella tabella degli affitti 
INSERT INTO affiti (id_cliente, id_film, data_inizio, data_fine)
VALUES
(1,1,'12\12\2024','15\12\2024')
(2,3,'1\11\2024','12\12\2024')
(3,2,'14\10\2024','10\1\2025');

-- Verifico il corretto inserimento dei dati
SELECT * FROM affiti;