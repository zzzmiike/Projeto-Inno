CREATE DATABASE innotech;

USE innotech;


CREATE TABLE cadastroUsuario (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nomeUsuario VARCHAR (50) not null,
idadeUsuario int,
emailUsuario VARCHAR (50) not null,
senhaUsuario VARCHAR (20) not null,
rgUsuario CHAR (9),
cpfUsuario CHAR (11) not null,
dataNascUsuario DATE,
generoUsuario VARCHAR(10),
EnderecoUsuario VARCHAR(100) not null,
NumEnderecoUsuario int,
bairroUsuario VARCHAR (50) default 'Nao informado',
estadoUsuario CHAR(2),
cepUsuario varchar (8) not null
);

desc cadastroUsuario;

-- Inserindo os usuarios;
INSERT INTO cadastroUsuario VALUES
('1', 'Rosângela Josefa Fogaça', '67', 'rosangela.josefa.fogaca@rizan.com.br', 'qKeKTj71U9', '247019367', '89982143930', '1956-02-24', 'Feminino', 'Rua Trinta e Quatro', '656', 'Jardim Novo Milênio', 'MT', '78093783'), 
('2', 'Ian Cauã Almeida', '38', 'ian_almeida@ci.com.br', 'Q0Ncj78Igq', '399305713', '91693928973', '1985-03-03', 'Masculino', 'Rua Embaixador José Roberto de Macedo Soares', '627', 'Centro', 'RJ', '25625160'), 
('3', 'Kamilly Mariane Pietra Sales', '59', 'kamilly_sales@tce.am.gov.br', 'K3DurgaPap', '344725820', '9914930522', '1964-02-16', 'Feminino', 'Travessa Libéria', '342', 'Feitoria', 'RS', '93056260'), 
('4', 'Murilo Leonardo Barros', '27', 'murilo-barros98@omnibrasil.com.br', '1eWHUwro6x', '311883151', '94945512221', '1996-01-25', 'Masculino', 'SAUS Quadra 5 Lote 4/5', '515', 'Asa Sul', 'DF', '70070918'), 
('5', 'Yago Nelson Gabriel da Conceição', '19', 'yagonelsondaconceicao@deca.com.br', 'C2XXxxJ2co', '483892683', '18233236691', '2004-02-10', 'Masculino', 'Alameda Santa Izabel', '913', 'Água Boa (Outeiro)', 'PA', '66843045'), 
('6', 'Sophia Pietra Aparício', '48', 'sophia_aparicio@bb.com.br', 'bKhHUr95Q3', '395814649', '82205929585', '1975-03-02', 'Feminino', 'Rua Beaurepaire Rohan', '754', 'Centro', 'PB', '58010000'), 
('7', 'Sérgio Emanuel Cauê Caldeira', '39', 'sergio-caldeira83@balloons.com.br', 'jHskERaKx6', '113828846', '33962688226', '1984-01-17', 'Masculino', 'Rua Zuza Lino', '785', 'Malva', 'PI', '64600330'), 
('8', 'Mateus Nathan da Cruz', '25', 'mateusnathandacruz@gruposeteestrelas.com.br', 'UTer7nuwm0', '501041308', '9240173765', '1998-01-12', 'Masculino', 'Rua Jósimo dos Santos', '908', 'São Vicente', 'RR', '69303493'), 
('9', 'Daiane Carla Nicole da Rocha', '65', 'daiane.carla.darocha@contabilidadevictoria.com.br', 'QUm9ZIkB68', '404455013', '77376050612', '1958-01-19', 'Feminino', 'Beco da Felicidade I', '293', 'Conquista', 'ES', '29033051'), 
('10', 'Fernando Thomas Gomes', '48', 'fernandothomasgomes@obrativaengenharia.com.br', '2YBPOw45nH', '154852983', '6017330454', '1975-02-09', 'Masculino', 'Rua Lourenço Lopes', '909', 'Eldorado', 'AC', '69902530'), 
('11', 'Lorenzo Marcos Assunção', '57', 'lorenzo_assuncao@valparaibaimoveis.com.br', 't5jI1OtSNm', '384306597', '93392124958', '1966-03-09', 'Masculino', 'Rua Calcedônia', '660', 'Residencial Serra das Brisas', 'GO', '74947842'), 
('12', 'Theo Fábio da Cunha', '35', 'theo.fabio.dacunha@univap.br', 'q1B5DaJP9b', '289254498', '63305018232', '1988-03-06', 'Masculino', 'Rua Rosa Amélia', '376', 'Dom Jaime Câmara', 'RN', '59628643'), 
('13', 'Edson Diego Rodrigo Viana', '41', 'edson.diego.viana@semco.com.br', 'LgJ9e4Fu5I', '401560417', '80525156291', '1982-02-07', 'Masculino', 'Caminho 26-Quadra D', '988', 'Cajazeiras', 'BA', '41341470'), 
('14', 'Nina Silvana Pinto', '77', 'nina_pinto@gilbertorodrigues.com', 'szJJ76jcOs', '308752934', '86244331931', '1946-01-03', 'Feminino', 'Rua Luíza Santos da Silva', '445', 'Teresópolis', 'RS', '90840356'), 
('15', 'Isabella Antônia Rafaela Martins', '77', 'isabella.antonia.martins@tglaw.com.br', 'knmakGN2Hf', '472184611', '99734024051', '1946-02-05', 'Feminino', 'Rua Glaura Lúcia Sobreira Alexandre', '734', 'Gramame', 'PB', '58069065');

SELECT * FROM cadastroUsuario;
SELECT nomeUsuario, emailUsuario, cepUsuario FROM cadastroUsuario;
SELECT * FROM cadastroUsuario WHERE nomeUsuario LIKE '%A%';
SELECT * FROM cadastroUsuario WHERE cpfUsuario LIKE '%5_';
SELECT * FROM cadastroUsuario WHERE cepUsuario LIKE '_8%';
SELECT * FROM cadastroUsuario WHERE emailUsuario LIKE '%.NET';
SELECT * FROM cadastroUsuario WHERE nomeUsuario LIKE 'Y%';
SELECT * FROM cadastroUsuario WHERE idUsuario = 8;
UPDATE cadastroUsuario SET nomeUsuario =  'Matheus Trindade dos Santos' WHERE idUsuario = 5;
SELECT * FROM cadastroUsuario WHERE nomeUsuario = 'Matheus Trindade dos Santos';

-- Criando a tabela sensor;
CREATE TABLE sensor (
idSensor INT PRIMARY KEY AUTO_INCREMENT,
modelo VARCHAR (10) not null,
manutencao DATE not null,
situacao VARCHAR (15) not null
);

ALTER TABLE sensor MODIFY COLUMN situacao VARCHAR (13), ADD CONSTRAINT CHECK (situacao in ('ativo', 'inativo', 'em manutencao'));

INSERT INTO sensor VALUES
('1', 'DHT-11', '2023-03-02', 'ativo');

SELECT * FROM sensor;

-- Criando a tabela metrica;
CREATE TABLE metricas (
idMetrica INT PRIMARY KEY AUTO_INCREMENT,
modeloSensor VARCHAR (10) not null,
valorTemp DOUBLE not null,
umidade FLOAT not null
);

INSERT INTO metricas VALUES
('1', 'DHT-11', '23.6', '54.0');




