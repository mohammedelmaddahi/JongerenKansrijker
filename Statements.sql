
CREATE DATABASE JongerenKansrijker;


USE JongerenKansrijker;


CREATE TABLE activiteit(
    
    activiteitcode INT NOT NULL AUTO_INCREMENT,
    activiteit VARCHAR(40),
    PRIMARY KEY(activiteitcode)
);