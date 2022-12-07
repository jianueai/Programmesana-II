DROP table IF EXISTS demo;
DROP table IF EXISTS Klients;
DROP table IF EXISTS Produkts;
DROP table IF EXISTS Grafiks;
DROP table IF EXISTS Darbinieks;
DROP table IF EXISTS Pasutijums;
DROP table IF EXISTS Grozs;


Create TABLE Klients(
  Klienta_ID INTEGER PRIMARY KEY AUTOINCREMENT,
  Vards varchar(30) NOT NULL,
  Uzvards varchar(30) not NULL,
  Adrese varchar(100) NOT NULL,
  E_pasts varchar(100) Not NULL,
  Parole varchar(30) not NULL,
  Telefona_nr varchar(14),
  
  UNIQUE(Telefona_nr),
  UNIQUE(E_pasts),
  UNIQUE(Parole)
);

CREATE table Produkts(
  Produkta_ID INTEGER PRIMARY key AUTOINCREMENT,
  Nosaukums varchar varchar(100) NOT NULL,
  Skaits INTEGER,
  Cena FLOAT NOT NULL,
  
  UNIQUE(Nosaukums)
);
  
CREATE table Grafiks(
  Grafika_ID INTEGER PRIMARY KEY AUTOINCREMENT,
  Diena INTEGER NOT NULL,
  Mainas_Sakums varchar(5),
  Mainas_Beigas varchar(5)
 );
 
 Create table Darbinieks(
   Darbinieka_ID INTEGER PRIMARY key AUTOINCREMENT,
   Grafika_ID INTEGER,
   Vards varchar(30) NOT NULL,
   Uzvards varhcar(30) NOT NULL,
   Darbinieka_Telefona_nr varchar(14) NOT NULL,
   
   UNIQUE(Darbinieka_Telefona_nr),
   FOREIGN key(Grafika_ID) REFERENCES Grafiks(Grafika_ID)
  );
  
  CREATE TABLE Pasutijums(
    Pasutijuma_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Produkta_ID INTEGER,
    Darbinieka_ID INTEGER,
    Klienta_ID INTEGER,
    Preces_sanemsana varchar(7) ,
    
    FOREIGN key(Produkta_ID) REFERENCES Produkts(Produkta_ID),
    FOREIGN key(Darbinieka_ID) REFERENCES Darbinieks(Darbinieka_ID),
    FOREIGN key(Klienta_ID) REFERENCES Klients(Klienta_ID)
   );
 
 CREATE TABLE Grozs(
   Groza_ID INTEGER PRIMARY key AUTOINCREMENT,
   Produkta_ID INTEGER,
   Pasutijuma_ID INTEGER,
   
   FOREIGN key(Produkta_ID) REFERENCES Produkts(Produkta_ID),
   FOREIGN KEY(Pasutijuma_ID) REFERENCES Pasutijums(Pasutijuma_ID)
 );

/*pasutitaju dati */
INSERT INTO Klients(Vards, Uzvards, Adrese, E_pasts, Parole, Telefona_nr)
VALUES('Jānis','Rakstnieks','Latvija, Rīga, luksusa iela 9', 'jurka01@gmail.com', 'Juristi321', '+37128754492');
INSERT INTO Klients(Vards, Uzvards, Adrese, E_pasts, Parole, Telefona_nr)
VALUES('Aldris','Zemgals','Latvija, Jēkapbils, jūras iela 2', 'aldaris@gmail.com', 'ctrlcctrlv', '+37126572788');

/*produktu dati*/
ins
       
