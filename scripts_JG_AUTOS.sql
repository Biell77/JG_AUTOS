-- Cria o banco de dados
CREATE DATABASE IF NOT EXISTS JG_AUTOS;

-- Usa o banco de dados JG_AUTOS
USE JG_AUTOS;

--
CREATE TABLE IF NOT EXISTS `Enderecos` (
  `id_endereco` INT NOT NULL,
  `CEP` BIGINT NOT NULL,
  `Rua` VARCHAR(45) NOT NULL,
  `Numero_Casa` INT NOT NULL,
  `Bairro` VARCHAR(45) NOT NULL,
  `Cidade` VARCHAR(45) NOT NULL,
  `Estado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_endereco`)
);

CREATE TABLE IF NOT EXISTS `Funcionarios` (
  `id_funcionario` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Sobrenome` VARCHAR(45) NOT NULL,
  `Contrato` VARCHAR(45) NOT NULL,
  `Cargo` VARCHAR(45) NOT NULL,
  `CPF` BIGINT NOT NULL,
  `Telefone` BIGINT NOT NULL,
  `Salario` DOUBLE NOT NULL,
  PRIMARY KEY (`id_funcionario`)
);

CREATE TABLE IF NOT EXISTS `Vendas` (
  `id_vendas` INT NOT NULL,
  `Nome_Func` VARCHAR(45) NOT NULL,
  `Sobrenome_Func` VARCHAR(45) NOT NULL,
  `Cargo` VARCHAR(45) NOT NULL,
  `Preco_Total` DOUBLE NOT NULL,
  `Endereco_id_endereco` INT NOT NULL,
  `Funcionario_id_funcionario` INT NOT NULL,
  PRIMARY KEY (`id_vendas`),
  CONSTRAINT `fk_Vendas_Endereco1` FOREIGN KEY (`Endereco_id_endereco`) REFERENCES `Enderecos` (`id_endereco`),
  CONSTRAINT `fk_Vendas_Funcionario1` FOREIGN KEY (`Funcionario_id_funcionario`) REFERENCES `Funcionarios` (`id_funcionario`)
);

CREATE TABLE IF NOT EXISTS `Clientes` (
  `id_cliente` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Sobrenome` VARCHAR(45) NOT NULL,
  `CPF` BIGINT NOT NULL,
  `Telefone` BIGINT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Endereco_id_endereco` INT NOT NULL,
  `Vendas_id_vendas` INT NOT NULL,
  PRIMARY KEY (`id_cliente`),
  CONSTRAINT `fk_Cliente_Endereco` FOREIGN KEY (`Endereco_id_endereco`) REFERENCES `Enderecos` (`id_endereco`),
  CONSTRAINT `fk_Clientes_Vendas1` FOREIGN KEY (`Vendas_id_vendas`) REFERENCES `Vendas` (`id_vendas`)
);

CREATE TABLE IF NOT EXISTS `Veiculos` (
  `id_veiculos` INT NOT NULL,
  `Categoria` VARCHAR(45) NOT NULL,
  `Modelo` VARCHAR(45) NOT NULL,
  `Novo/Usado` VARCHAR(45) NOT NULL,
  `Marca` VARCHAR(45) NOT NULL,
  `Ano` INT NOT NULL,
  `Quilometragem` INT NOT NULL,
  `Cor` VARCHAR(45) NOT NULL,
  `Cambio` VARCHAR(45) NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  `Combustivel` VARCHAR(45) NOT NULL,
  `Informacão_Motor` VARCHAR(45) NOT NULL,
  `Valor` DOUBLE NOT NULL,
  PRIMARY KEY (`id_veiculos`)
);

CREATE TABLE IF NOT EXISTS `Carrinho` (
  `Veiculos_id_veiculos` INT NOT NULL,
  `Vendas_id_vendas` INT NOT NULL,
  PRIMARY KEY (`Veiculos_id_veiculos`, `Vendas_id_vendas`),
  CONSTRAINT `fk_Veiculos_has_Vendas_Veiculos1` FOREIGN KEY (`Veiculos_id_veiculos`) REFERENCES `Veiculos` (`id_veiculos`),
  CONSTRAINT `fk_Veiculos_has_Vendas_Vendas1` FOREIGN KEY (`Vendas_id_vendas`) REFERENCES `Vendas` (`id_vendas`)
);

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        1,
        69314625,
        'Rua Carmelo',
        99,
        'Jardim Tropical',
        'Boa Vista',
        'RR'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        2,
        57072780,
        'Rua Estudante Lisiane Guimarães',
        88,
        'Cidade Universitária',
        'Maceió',
        'AL'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        3,
        81925569,
        'Rua Waldomiro de Mello Moraes',
        56,
        'Sítio Cercado',
        'Curitiba',
        'PR'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        4,
        69921545,
        'Rua Senador Mário Maia',
        42,
        'Montanhês',
        'Rio Branco',
        'AC'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        5,
        88503001,
        'Rua Cruz e Souza',
        22,
        'Brusque',
        'Lages',
        'SC'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        6,
        54745540,
        'Rua do Setúbal',
        34,
        'Chã da Tábua',
        'São Lourenço da Mata',
        'PE'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        7,
        78099115,
        'Rua Vinte e Três',
        107,
        'Pedra 90',
        'Cuiabá',
        'MT'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        8,
        77826360,
        'Rua dos Jenipapos',
        777,
        'Loteamento Araguaína Sul',
        'Araguaína,',
        'TO'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        9,
        52291126,
        'Rua Aurora',
        205,
        'Brejo da Guabiraba',
        'Recife',
        'PE'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        10,
        57071862,
        'Rua França',
        322,
        'Clima Bom',
        'Maceió',
        'AL'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        11,
        64037230,
        'Quadra G',
        477,
        'Portal da Alegria',
        'Teresina',
        'PI'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        12,
        69077530,
        'Rua Capitão Lamarca',
        899,
        'Japiim',
        'Manaus',
        'AM'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        13,
        44088366,
        'Rua Rio Itapemirim',
        643,
        'Brasília',
        'Feira de Santana',
        'BA'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        14,
        77813680,
        'Rua Venceslau Brás',
        780,
        'Loteamento Presidente Costa e Silva',
        'Araguaína',
        'TO'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        15,
        36035550,
        'Rua Simão Gabriel Sffeir',
        381,
        'Borboleta',
        'Juiz de Fora',
        'MG'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        16,
        69317574,
        'Rua Vega',
        215,
        'Cidade Satélite',
        'Boa Vista',
        'RR'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (17, 31035140, 'Rua Domingos Leão',);

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        18,
        28605358,
        'Rua Thomas',
        33,
        'Chácara Paraíso',
        'Nova Friburgo',
        'RJ'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        19,
        86055690,
        'Rua Rubens Ávila',
        90,
        'Alto da Colina',
        'Londrina',
        'PR'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        20,
        60340450,
        'Vila José Alves',
        1,
        'Floresta',
        'Fortaleza',
        'CE'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        21,
        69901740,
        'Rua Felicidade',
        7,
        'Vitória',
        'Rio Branco',
        'AC'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        22,
        57606268,
        'Rua Manoel Pereira da Fonseca',
        10,
        'Sonho Verde',
        'Palmeira dos Índios',
        'AL'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        23,
        97504422,
        'Quadra B',
        18,
        'Tabajara Brites',
        'Uruguaiana',
        'RS'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        24,
        49042040,
        'Rua Antônio da Cruz Filho',
        23,
        'São Conrado',
        'Aracaju',
        'SE'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        25,
        32657550,
        'Alameda do Vargas',
        93,
        'Estância do Sereno Sede',
        'Betim',
        'MG'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        26,
        68908643,
        'Avenida Airton Senna',
        1000,
        'Boné Azul',
        'Macapá',
        'AP'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        27,
        78025433,
        'Rua Água Clara',
        762,
        'Cohab Nova',
        'Cuiabá',
        'MT'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        28,
        21825180,
        'Rua Aglaia',
        999,
        'Bangu',
        'Rio de Janeiro',
        'RJ'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        29,
        23515750,
        'Beco Vila Santa Cruz',
        831,
        'Santa Cruz',
        'Rio de Janeiro',
        'RJ'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        30,
        65053506,
        'Travessa Dois',
        3,
        'Planalto Anil IV',
        'São Luís',
        'MA'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        31,
        79902438,
        'Rua Ameixeira',
        13,
        'Residencial Ponta Porã I',
        'Ponta Porã',
        'MS'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        32,
        64080120,
        'Rua Joacaba',
        9,
        'Novo Horizonte',
        'Teresina',
        'PI'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        33,
        56332113,
        'Rua Trinta e Quatro',
        34,
        'Henrique Leite',
        'Petrolina',
        'PE'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        34,
        64601206,
        'Rua Perimetral',
        229,
        'Aerolândia',
        'Picos',
        'PI'
    );

INSERT INTO
    Enderecos (
        id_endereco,
        CEP,
        Rua,
        Numero_casa,
        Bairro,
        Cidade,
        Estado
    )
VALUES
    (
        35,
        65082010,
        'Rua da Mangueira',
        500,
        'Vila Dom Luís',
        'São Luís',
        'MA'
    );

UPDATE
    Enderecos
SET
    CEP = 65046370
WHERE
    id_endereco = 35;

UPDATE
    Enderecos
SET
    Rua = 'Rua do Ribeirão'
WHERE
    id_endereco = 35;

UPDATE
    Enderecos
SET
    Numero_casa = 515
WHERE
    id_endereco = 35;

UPDATE
    Enderecos
SET
    Bairro = 'Vila Palmeira'
WHERE
    id_endereco = 35;

UPDATE
    Enderecos
SET
    CEP = 23515600
WHERE
    id_endereco = 29;

UPDATE
    Enderecos
SET
    Rua = 'Rua Marquês de Maricá'
WHERE
    id_endereco = 29;

UPDATE
    Enderecos
SET
    CEP = 89111146
WHERE
    id_endereco = 1;

UPDATE
    Enderecos
SET
    Rua = 'Leo Rothermel'
WHERE
    id_endereco = 1;

UPDATE
    Enderecos
SET
    Numero_casa = 87
WHERE
    id_endereco = 1;

UPDATE
    Enderecos
SET
    Bairro = 'Bela Vista'
WHERE
    id_endereco = 1;

UPDATE
    Enderecos
SET
    Cidade = 'Gaspar'
WHERE
    id_endereco = 1;

UPDATE
    Enderecos
SET
    Estado = 'SC'
WHERE
    id_endereco = 1;

DELETE FROM
    Enderecos
WHERE
    id_endereco = 32;

DELETE FROM
    Enderecos
WHERE
    id_endereco = 31;

DELETE FROM
    Enderecos
WHERE
    id_endereco = 25;

DELETE FROM
    Enderecos
WHERE
    id_endereco = 14;

DELETE FROM
    Enderecos
WHERE
    id_endereco = 9;

    insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        1,
        'Malvin',
        'Soane',
        '11673-532',
        'Vendedor',
        12951103344,
        4934366934,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        2,
        'Erasmus',
        'Moreinu',
        '49349-140',
        'Vendedor',
        59992199067,
        8333361081,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        3,
        'Gerrard',
        'Durbin',
        '61715-039',
        'Vendedor',
        72291940678,
        6622238714,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        4,
        'Else',
        'Featherstone',
        '54575-257',
        'Vendedor',
        78619081519,
        9630776341,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        5,
        'Carver',
        'McDonough',
        '49999-306',
        'Vendedor',
        60562260269,
        9525823681,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        6,
        'Conchita',
        'Camblin',
        '43269-858',
        'Vendedor',
        05110161666,
        1627735612,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        7,
        'Fraze',
        'Taylot',
        '52125-199',
        'Vendedor',
        93949250905,
        2734858558,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        8,
        'Natka',
        'Daughtery',
        '54868-5855',
        'Vendedor',
        68508288000,
        6129838725,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        9,
        'Hasheem',
        'Iwanowski',
        '50383-087',
        'Vendedor',
        08138479078,
        9226212876,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        10,
        'Chas',
        'Vasyukhin',
        '59779-546',
        'Vendedor',
        62986405410,
        2232432173,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        11,
        'Powell',
        'Sprason',
        '50309-777',
        'Vendedor',
        95051361374,
        9523542238,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        12,
        'Solly',
        'Kincla',
        '0536-4534',
        'Vendedor',
        93780118378,
        6936474549,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        13,
        'Selene',
        'Dymock',
        '37000-406',
        'Faxineiro',
        84125765600,
        8324544832,
        1400.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        14,
        'Gene',
        'Ibbett',
        '37205-951',
        'Faxineiro',
        17327521259,
        9821263227,
        1400.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        15,
        'Almeria',
        'Bowery',
        '0615-7661',
        'Faxineiro',
        03419457731,
        6432664122,
        1400.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        16,
        'Melba',
        'Turvey',
        '59726-256',
        'Faxineiro',
        90015603938,
        5522136326,
        1400.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        17,
        'Kara-lynn',
        'Shmyr',
        '52125-061',
        'Faxineiro',
        54518164334,
        6936553418,
        1400.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        18,
        'Kristien',
        'Rowston',
        '55111-440',
        'Faxineiro',
        65002822800,
        1127664337,
        1400.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        19,
        'Carilyn',
        'Malicki',
        '52083-056',
        'Faxineiro',
        60635005026,
        9722419455,
        1400.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        20,
        'Alain',
        'Di Frisco',
        '51079-444',
        'Faxineiro',
        93687192849,
        6525587533,
        1400.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        21,
        'Caspar',
        'Tysack',
        '24330-210',
        'Faxineiro',
        91337808628,
        6224464417,
        1400.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        22,
        'Nollie',
        'Moulin',
        '55154-5034',
        'Faxineiro',
        47713526234,
        4332683743,
        1400.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        23,
        'Channa',
        'Grinyakin',
        '0179-1978',
        'Vendedor',
        20782313809,
        5528206767,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        24,
        'Adda',
        'Harsum',
        '58118-2108',
        'Vendedor',
        19617622939,
        4932618858,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        25,
        'Carce',
        'Yoseloff',
        '65044-1340',
        'Vendedor',
        16578525122,
        6323324679,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        26,
        'Carlo',
        'Goch',
        '0280-6060',
        'Vendedor',
        37340019197,
        2225078781,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        27,
        'Ferdinande',
        'Klimek',
        '36800-022',
        'Vendedor',
        98104996711,
        8832871766,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        28,
        'Wald',
        'Northfield',
        '49483-341',
        'Vendedor',
        51860602916,
        8532706117,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        29,
        'Tish',
        'Pabel',
        '59886-350',
        'Vendedor',
        55045434870,
        4536321318,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        30,
        'Zachariah',
        'Shitliffe',
        '0527-1373',
        'Vendedor',
        10558190537,
        8827178524,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        31,
        'Lion',
        'Peter',
        '53808-1042',
        'Vendedor',
        75434602382,
        6325885247,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        32,
        'Annamaria',
        'Meadmore',
        '48951-8080',
        'Vendedor',
        82983203522,
        9625640834,
        1800.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        33,
        'Nikki',
        'Stevenson',
        '10812-424',
        'Diretor',
        64468927569,
        5326345944,
        5000.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        34,
        'Jacquie',
        'Hanes',
        '57520-0058',
        'Diretor',
        24642696385,
        7436718683,
        5000.00
    );

insert into
    Funcionarios (
        id_funcionario,
        Nome,
        Sobrenome,
        Contrato,
        Cargo,
        CPF,
        Telefone,
        Salario
    )
values
    (
        35,
        'Lorry',
        'Petschelt',
        '49967-428',
        'Diretor',
        65920232447,
        6139627481,
        5000.00
    );

update
    Funcionarios
set
    Nome = 'Tiago'
where
    id_funcionario = 26;

update
    Funcionarios
set
    Nome = 'Antonio'
where
    id_funcionario = 27;

update
    Funcionarios
set
    Nome = 'Joao'
where
    id_funcionario = 28;

update
    Funcionarios
set
    Nome = 'Lucas'
where
    id_funcionario = 29;

update
    Funcionarios
set
    Nome = 'Bruno'
where
    id_funcionario = 30;

update
    Funcionarios
set
    Nome = 'Joaquim'
where
    id_funcionario = 31;

update
    Funcionarios
set
    Nome = 'Ricardo'
where
    id_funcionario = 32;

update
    Funcionarios
set
    Nome = 'Luiz'
where
    id_funcionario = 33;

update
    Funcionarios
set
    Nome = 'Eric'
where
    id_funcionario = 34;

update
    Funcionarios
set
    Nome = 'Gabriel'
where
    id_funcionario = 35;

delete from
    Funcionarios
where
    id_funcionario = 26;

delete from
    Funcionarios
where
    id_funcionario = 27;

delete from
    Funcionarios
where
    id_funcionario = 28;

delete from
    Funcionarios
where
    id_funcionario = 28;

delete from
    Funcionarios
where
    id_funcionario = 29;

    insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (1, 'Malvin', 'Soane', 'Vendedor', '120000,00');

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (2, 'Erasmus', 'Moreinu', 'Vendedor', '200000,00');

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (3, 'Gerrard', 'Durbin', 'Vendedor', '100000,00');

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        4,
        'Else',
        'Featherstone',
        'Vendedor',
        '17000,00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        5,
        'Carver',
        'McDonough',
        'Vendedor',
        '605000.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (6, 'Conchita', 'Camblin', 'Vendedor', '10000.00');

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (7, 'Fraze', 'Taylot', 'Vendedor', '939000.00');

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (8, 'Natka', 'Daughtery', 'Vendedor', '68500.00');

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        9,
        'Hasheem',
        'Iwanowski',
        'Vendedor',
        '10000.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (10, 'Chas', 'Vasyukhin', 'Vendedor', '62900.00');

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        11,
        'Powell',
        'Sprason',
        '50309-777',
        'Vendedor',
        '950.513.613-74'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        12,
        'Solly',
        'Kincla',
        '0536-4534',
        'Vendedor',
        '18500.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        13,
        'Selene',
        'Dymock',
        '37000-406',
        'Vendedor',
        '19400.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        14,
        'Gene',
        'Ibbett',
        '37205-951',
        'Vendedor',
        '14020.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        15,
        'Almeria',
        'Bowery',
        '0615-7661',
        'Vendedor',
        '31400.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        16,
        'Kara-lynn',
        'Shmyr',
        '52125-061',
        'Vendedor',
        '50000.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        17,
        'Kristien',
        'Rowston',
        '55111-440',
        'Vendedor',
        '177400.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        18,
        'Carilyn',
        'Malicki',
        '52083-056',
        'Vendedor',
        '812400.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        19,
        'Alain',
        'Di Frisco',
        '51079-444',
        'Vendedor',
        '194090.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        20,
        'Caspar',
        'Tysack',
        '24330-210',
        'Vendedor',
        '194200.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        21,
        'Nollie',
        'Moulin',
        '55154-5034',
        'Vendedor',
        '154400.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        22,
        'Channa',
        'Grinyakin',
        '0179-1978',
        'Vendedor',
        '861800.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        23,
        'Adda',
        'Harsum',
        '58118-2108',
        'Vendedor',
        '718800.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        24,
        'Carce',
        'Yoseloff',
        '65044-1340',
        'Vendedor',
        '415800.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        25,
        'Carlo',
        'Goch',
        '0280-6060',
        'Vendedor',
        '148050.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        26,
        'Ferdinande',
        'Klimek',
        '36800-022',
        'Vendedor',
        '918500.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        27,
        'Wald',
        'Northfield',
        '49483-341',
        'Vendedor',
        '185090.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        28,
        'Tish',
        'Pabel',
        '59886-350',
        'Vendedor',
        '185400.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        29,
        'Zachariah',
        'Shitliffe',
        '0527-1373',
        '418400.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        30,
        'Lion',
        'Peter',
        '53808-1042',
        'Vendedor',
        '414800.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        31,
        'Annamaria',
        'Meadmore',
        '48951-8080',
        'Vendedor',
        '298500.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        32,
        'Nikki',
        'Stevenson',
        '10812-424',
        'Vendedor',
        '55000.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        33,
        'Jacquie',
        'Hanes',
        '57520-0058',
        'Vendedor',
        '750700.00'
    );

insert into
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
values
    (
        34,
        'Lorry',
        'Petschelt',
        '49967-428',
        'Vendedor',
        '358000.00'
    );

update
    Vendas
set
    Nome_Func = 'Andrew'
where
    id_vendas = 25;

update
    Vendas
set
    Nome_Func = 'Pedro'
where
    id_vendas = 26;

update
    Vendas
set
    Nome_Func = 'Lucas'
where
    id_vendas = 27;

update
    Vendas
set
    Nome_Func = 'Tiago'
where
    id_vendas = 28;

update
    Vendas
set
    Nome_Func = 'Luiz'
where
    id_vendas = 29;

update
    Vendas
set
    Nome_Func = 'Inacio'
where
    id_vendas = 30;

update
    Vendas
set
    Nome_Func = 'Gabriel'
where
    id_vendas = 31;

update
    Vendas
set
    Nome_Func = 'Erik'
where
    id_vendas = 32;

update
    Vendas
set
    Nome_Func = 'Reinaldo'
where
    id_vendas = 33;

update
    Vendas
set
    Nome_Func = 'Jair'
where
    id_vendas = 34;

delete from
    Vendas
where
    id_vendas = 25;

delete from
    Vendas
where
    id_vendas = 26;

delete from
    Vendas
where
    id_vendas = 27;

delete from
    Vendas
where
    id_vendas = 28;

delete from
    Vendas
where
    id_vendas = 29;

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        1,
        'Cher',
        'Mingardo',
        68327908057,
        7932154656,
        'cmingardo0@wikia.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        2,
        'Lisa',
        'Chavrin',
        36133953047,
        9639246536,
        'lchavrin1@dropbox.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        3,
        'Dew',
        'Wreath',
        04772809007,
        6528103933,
        'dwreath2@barnesandnoble.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        4,
        'Vivianna',
        'Larkcum',
        27608644052,
        8137025531,
        'vlarkcum3@google.fr'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        5,
        'Marisa',
        'Reeds',
        22868057098,
        9632443923,
        'mreeds4@ucoz.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        6,
        'Eddie',
        'Bloxsome',
        82312462079,
        9835521786,
        'ebloxsome5@desdev.cn'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        7,
        'Herculie',
        'Rolling',
        59349641003,
        5120276532,
        'hrolling6@squidoo.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        8,
        'Robinet',
        'Bellas',
        82804778029,
        1324823738,
        'rbellas7@gov.uk'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        9,
        'Bobbie',
        'Jury',
        82358793019,
        6937838117,
        'bjury8@dropbox.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        10,
        'Jareb',
        'Pacht',
        24490520034,
        5438311012,
        'jpacht9@discovery.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        11,
        'Barny',
        'Girke',
        26109111066,
        9623511535,
        'bgirkea@biblegateway.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        12,
        'Ebeneser',
        'Grant',
        98427062060,
        8120685489,
        'egrantb@wikimedia.org'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        13,
        'Sybil',
        'Servant',
        40389628069,
        3538126012,
        'sservantc@businessinsider.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        14,
        'Everett',
        'Puttergill',
        51352467038,
        6831504189,
        'eputtergilld@webs.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        15,
        'Gabey',
        'Duffill',
        21987104048,
        8226538421,
        'gduffille@ycombinator.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        16,
        'Chantal',
        'Stavers',
        33253065006,
        6921311577,
        'cstaversf@acquirethisname.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        17,
        'Grove',
        'Marlowe',
        72129277080,
        9621115124,
        'gmarloweg@si.edu'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        18,
        'Beulah',
        'Drissell',
        68228646011,
        9832578389,
        'bdrissellh@domainmarket.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        19,
        'Cheslie',
        'Jammes',
        00228988080,
        8126433264,
        'cjammesi@who.int'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        20,
        'Dolorita',
        'Goeff',
        71093041080,
        5134770114,
        'dgoeffj@goo.gl'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        21,
        'Misty',
        'Paine',
        07615032008,
        8337152612,
        'mpainek@cbc.ca'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        22,
        'Rex',
        'Ketts',
        97918991001,
        6230677166,
        'rkettsl@msn.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        23,
        'Rice',
        'Di Maggio',
        78121413060,
        8436236634,
        'rdimaggiom@t.co'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        24,
        'Cornall',
        'Zorn',
        73634795000,
        8621387375,
        'czornn@wikipedia.org'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        25,
        'Olly',
        'Demsey',
        57345618005,
        2837397087,
        'odemseyo@howstuffworks.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        26,
        'Quintilla',
        'Alelsandrowicz',
        62499604069,
        4938622977,
        'qalelsandrowiczp@nih.gov'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        27,
        'Caryn',
        'Parken',
        94008312005,
        9727862507,
        'cparkenq@bizjournals.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        28,
        'Johnette',
        'Smallpeice',
        20675305004,
        6833384558,
        'jsmallpeicer@jimdo.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        29,
        'Addy',
        'Pearsey',
        51272181006,
        7925338115,
        'apearseys@apache.org'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        30,
        'Deanna',
        'Boldero',
        94075305074,
        9335731127,
        'dbolderot@wsj.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        31,
        'Vicki',
        'Epton',
        76049040095,
        7211375339,
        'veptonu@overblog.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        32,
        'Daryle',
        'Woolfall',
        84607315028,
        9625486882,
        'dwoolfallv@twitter.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        33,
        'Isidora',
        'Hylden',
        25355178090,
        6521356747,
        'ihyldenw@cpanel.net'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        34,
        'Filberte',
        'Maskelyne',
        49546275085,
        1335456372,
        'fmaskelynex@elegantthemes.com'
    );

insert into
    Clientes (
        id_clintes,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
values
    (
        35,
        'Erin',
        'Colly',
        05441924004,
        4735895652,
        'ecollyy@boston.com'
    );

UPDATE
    Clientes
SET
    Email = 'ecolly@Eccos.com'
WHERE
    id_clintes = 35;

UPDATE
    Clientes
SET
    Nome = 'Gabriel'
WHERE
    id_clintes = 1;

UPDATE
    Clientes
SET
    Sobrenome = 'Rothermel'
WHERE
    id_clintes = 1;

UPDATE
    Clientes
SET
    CPF = 14851943938
WHERE
    id_clintes = 1;

UPDATE
    Clientes
SET
    Telefone = 4797645600
WHERE
    id_clintes = 1;

UPDATE
    Clientes
SET
    Email = 'Gabriel.LuizRothermel@gmail.com'
WHERE
    id_clintes = 1;

UPDATE
    Clientes
SET
    Nome = 'João'
WHERE
    id_clintes = 2;

UPDATE
    Clientes
SET
    Sobrenome = 'Maffezzolli'
WHERE
    id_clintes = 2;

UPDATE
    Clientes
SET
    CPF = 07170179904
WHERE
    id_clintes = 2;

UPDATE
    Clientes
SET
    Telefone = 4792767478
WHERE
    id_clintes = 2;

DELETE FROM
    Clientes
where
    id_clintes = 34;

DELETE FROM
    Clientes
where
    id_clintes = 26;

DELETE FROM
    Clientes
where
    id_clintes = 23;

DELETE FROM
    Clientes
where
    id_clintes = 18;

DELETE FROM
    Clientes
where
    id_clintes = 7;