CREATE DATABASE innotech;

USE innotech;

CREATE TABLE cadastro (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nomeUsuario VARCHAR (50) not null,
senha VARCHAR (20) not null,
cpf CHAR (11) not null,
email VARCHAR (50) not null,
numeroEnd INT not null,
complemento VARCHAR (20) default 'Sem complemento',
cep varchar (8) not null
);

CREATE TABLE sensor (
idSensor INT PRIMARY KEY AUTO_INCREMENT,
modelo VARCHAR (10) not null,
manutencao DATE not null,
situacao VARCHAR (15) not null
);

CREATE TABLE metrica (
idMetrica INT PRIMARY KEY AUTO_INCREMENT,
modeloSensor VARCHAR (10) not null,
valor_temp DOUBLE not null,
umidade FLOAT not null
);

ALTER TABLE sensor MODIFY COLUMN situacao VARCHAR (13), ADD CONSTRAINT CHECK (situacao in ('ativo', 'inativo', 'em manutencao'));
DESC sensor;
DESC metrica;
DESC cadastro;
