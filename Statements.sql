
CREATE DATABASE JongerenKansrijker;


USE JongerenKansrijker;


CREATE TABLE activiteit(
    activiteitcode INT NOT NULL AUTO_INCREMENT,
    activiteit VARCHAR(40),
    PRIMARY KEY(activiteitcode)
);

CREATE TABLE jongere(
    jongerecode INT NOT NULL AUTO_INCREMENT,
    roepnaam VARCHAR(255) NOT NULL,
    tussenvoegsel VARCHAR(255),
    achternaam VARCHAR (255) NOT NULL,
    inschrijfdatum DATE NOT NULL,
    PRIMARY KEY (jongerecode)
);

CREATE TABLE instituut(
    instituutscode INT NOT NULL AUTO_INCREMENT,
    instituut VARCHAR(255) NOT NULL,
    telefooninstituut VARCHAR(255),
    PRIMARY KEY(instituutscode)
);

CREATE TABLE jongereinstituut(
    jongereinstituutscode INT NOT NULL AUTO_INCREMENT,
    jongerecode INT NOT NULL,
    instituutscode INT NOT NULL,
    startdatum DATE NOT NULL,
    PRIMARY KEY (jongereinstituutscode),
    FOREIGN KEY (jongerecode) REFERENCES jongere(jongerecode),
    FOREIGN KEY (instituutscode) REFERENCES instituut(instituutscode)
);

CREATE TABLE jongereactiviteit(
    jongereactiviteitcode INT NOT NULL AUTO_INCREMENT,
    jongerecode INT NOT NULL,
    activiteitcode INT NOT NULL,
    startdatum DATE,
    afgerond TINYINT,
    PRIMARY KEY(jongereactiviteitcode),
    FOREIGN KEY(jongerecode) REFERENCES jongere(jongerecode),
    FOREIGN KEY(activiteitcode) References activiteit(activiteitcode)
);

CREATE TABLE medewerker(
    medewerkercode INT AUTO_INCREMENT NOT NULL,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY(medewerkercode)
);
