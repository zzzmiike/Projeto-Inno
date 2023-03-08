-- Criando a database InnoTech;
CREATE DATABASE innotech;

-- Usando a database InnoTech;
USE innotech;

-- Criando a tabela 'cadastro', com idUsuario como Primary Key;
CREATE TABLE cadastro (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nomeUsuario VARCHAR (50) not null,
email VARCHAR (50) not null,
senha VARCHAR (20) not null,
cpf CHAR (11) not null,
numeroEnd INT not null,
bairro VARCHAR (50) default 'Bairro nao informado',
cep varchar (8) not null
);

-- Inserindo os usuarios;
INSERT INTO cadastro VALUES
('1', 'Bernardo Lucas Cauã Nunes', 'bernardo_lucas_nunes@tecnew.net', 'NWoiMpedYw','45516676258', '550','Parintins','69151505'),
('2', 'Francisco Yuri Marcelo Dias', 'francisco_yuri_dias@yahoo.com.br', 'la11F37cie','56836824283', '851','Colônia Terra Nova','69015499'),
('3', 'Sophia Sueli Oliveira', 'sophia-oliveira76@formulaweb.com.br', 'HiODqKomcw','91845139267', '302','Juruá','69552345'),
('4', 'Giovana Hadassa Nair Pires', 'giovana-pires82@bitco.cc', 'RCZZguO6Au','16062727210', '671','São José','69400758'),
('5', 'Antonio Jorge Raimundo da Cunha', 'antonio_jorge_dacunha@tafeta.com.br', 'p5ReoNFFpn','70354039229', '398','São José Operário','69085140'),
('6', 'Alícia Valentina Lavínia da Rocha', 'alicia_darocha@publicarbrasil.com.br', 'EOJli5PCuE','29855362861', '386','Parque Santo Antônio','05822010'),
('7', 'Maitê Amanda Assunção', 'maite-assuncao82@smalte.com.br', 'f9smKB9hdY','38577740889', '945','Dona Edith Campos Fávero','13145394'),
('8', 'Davi Kevin Lucca Ferreira', 'davi.kevin.ferreira@cppcoder.com', '2judo6loQ1','81013962842', '183','Vila Nova Cintra','08744220'),
('9', 'Elisa Mariana Jéssica Carvalho', 'elisamarianacarvalho@fixacomunicacao.com.br', 'KRG6zn55oW','66001165874', '200','Jardim América','13084405'),
('10', 'Rita Lara Duarte', 'rita_lara_duarte@uninorte.com.br', 'MjhO4iepq8','31292770805', '878','Alves Dias','09852800');

-- Exibindo a tabela completa;
SELECT * FROM cadastro;

-- Exibindo os dados de nome, email, e cep do usuario;
SELECT nomeUsuario, email, cep FROM cadastro;

-- Exibindo apenas os usuarios que contem a letra U no nome;
SELECT * FROM cadastro WHERE nomeUsuario LIKE '%U%';

-- Exibindo apenas os usuarios que contem o ultimo digito do CPF 9;
SELECT * FROM cadastro WHERE cpf LIKE '%_9';

-- Exibindo os CEPS que comecam com o numero 6;
SELECT * FROM cadastro WHERE cep LIKE '6_%';

-- Exibindo os emails que contenham '.COM.BR';
SELECT * FROM cadastro WHERE email LIKE '%.COM.BR';

-- Exibindo apenas os nomes que contenham como inicial a letra A; 
SELECT * FROM cadastro WHERE nomeUsuario LIKE 'A%';

-- Exibindo as informacoes de um unico usuario de ID 5;
SELECT * FROM cadastro WHERE idUsuario = 5;

-- Atualizando os dados do ID 5;
UPDATE cadastro SET nomeUsuario =  'Matheus Trindade dos Santos' WHERE idUsuario = 5;

-- Exibir os dados do usuario em que alteramos o seu nomeUsuario;
SELECT * FROM cadastro WHERE nomeUsuario = 'Matheus Trindade dos Santos';

-- Criando a tabela sensor;
CREATE TABLE sensor (
idSensor INT PRIMARY KEY AUTO_INCREMENT,
modelo VARCHAR (10) not null,
manutencao DATE not null,
situacao VARCHAR (15) not null
);

-- Alteracao na tabela, onde foi adicionado a constraint de situacao ativoa, inativa e em manutencao;
ALTER TABLE sensor MODIFY COLUMN situacao VARCHAR (13), ADD CONSTRAINT CHECK (situacao in ('ativo', 'inativo', 'em manutencao'));

-- Inserindo 1 valor na tabela;
INSERT INTO sensor VALUES
('1', 'LM35', '2023-10-05', 'ativo');

-- Exibindo todos os dados da tabela;
SELECT * FROM sensor;

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




