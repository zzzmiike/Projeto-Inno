USE inno;

-- Criando a tabela 'cadastro', com idUsuario como Primary Key;
CREATE TABLE cadastro (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nomeUsuario VARCHAR (50) not null,
email VARCHAR (50) not null,
senha VARCHAR (20) not null,
cpf CHAR (11) not null
);

insert into cadastro values
('1','matheus Anjos','matheus@gmail.com','matheus123','47549093806'
'2','matheus trindade','matheus@trindadegmail.com','matheus475490','48945216589'
'3','marcos','marcos@trindadegmail.com','marcos475490','54514484488');

select*from cadastro;
insert into cadastro values(
'3','marcos','marcos@trindadegmail.com','marcos475490','54514484488');

-- selecionar apenas com senha = a
select * from cadastro where senha = 'marcos475490';

-- selecionar apenas com senha = a
select * from cadastro where senha = 'matheus475490';

-- selecionar apenas com senha = a
select * from cadastro where senha = 'matheus123';

-- selecionar nomeUsuario que contenha a 3 letra t 
select *from cadastro where nomeUsuario like '__t%';

-- selecionar senha que contenha final 3
select *from cadastro where senha like '%3';

-- selecionar idusuario 2
select *from cadastro where idUsuario = 2;

-- selecionar idusuario 1
select *from cadastro where idUsuario = 1;

-- atualizar nome de usuario para = francisco
update cadastro set nomeUsuario = 'francisco' where idUsuario = 3;


-- Criando a tabela sensor;
CREATE TABLE sensor (
idSensor INT PRIMARY KEY AUTO_INCREMENT,
modelo VARCHAR (10) not null,
manutencao DATE not null,
situacao VARCHAR (15) not null
);

-- Alteracao na tabela, onde foi adicionado a constraint de situacao ativo, inativo e em manutencao;
ALTER TABLE sensor MODIFY COLUMN situacao VARCHAR (13), ADD CONSTRAINT CHECK (situacao in ('ativo', 'inativo', 'em manutencao'));

-- Inserindo 1 valor na tabela;
INSERT INTO sensor VALUES
('1', 'LM35', '2023-12-03', 'em manutencao');
select*from sensor;


-- Criando a tabela metrica;
CREATE TABLE metrica (
idMetrica INT PRIMARY KEY AUTO_INCREMENT,
modeloSensor VARCHAR (10) not null,
valor_temp DOUBLE not null,
umidade FLOAT not null
);

-- Inserindo os valores na tabela metrica;
INSERT INTO metrica VALUES
('1', 'LM35', '22.3', '80.0');

-- Exibindo os todos os valores da tabela metrica;
SELECT * FROM metrica;

-- Descricao de todas as tabelas;
DESC cadastro;
DESC sensor;
DESC metrica;

