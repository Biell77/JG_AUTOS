DROP DATABASE JG_AUTOS;

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
    `Salario` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id_funcionario`)
);

CREATE TABLE IF NOT EXISTS `Vendas` (
  `id_vendas` INT NOT NULL,
  `Nome_Func` VARCHAR(45) NOT NULL,
  `Sobrenome_Func` VARCHAR(45) NOT NULL,
  `Cargo` VARCHAR(45) NOT NULL,
  `Preco_Total` VARCHAR(45) NOT NULL,
  `Endereco_id_endereco` INT DEFAULT NULL,
  `Funcionario_id_funcionario` INT DEFAULT NULL,
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
    `Endereco_id_endereco` INT DEFAULT NULL,
    `Vendas_id_Vendas` INT DEFAULT NULL,
    PRIMARY KEY (`id_cliente`),
    CONSTRAINT `fk_Cliente_Endereco` FOREIGN KEY (`Endereco_id_endereco`) REFERENCES `Enderecos` (`id_endereco`),
    CONSTRAINT `fk_Clientes_Vendas1` FOREIGN KEY (`Vendas_id_Vendas`) REFERENCES `Vendas` (`id_Vendas`)
);

CREATE TABLE IF NOT EXISTS `Veiculos` (
    `id_veiculos` INT NOT NULL,
    `Categoria` VARCHAR(45) NOT NULL,
    `Modelo` VARCHAR(45) NOT NULL,
    `Novo_Usado` VARCHAR(45) NOT NULL,
    `Marca` VARCHAR(45) NOT NULL,
    `Ano` INT NOT NULL,
    `Quilometragem` INT NOT NULL,
    `Cor` VARCHAR(45) NOT NULL,
    `Cambio` VARCHAR(45) NOT NULL,
    `Tipo` VARCHAR(45) NOT NULL,
    `Combustivel` VARCHAR(45) NOT NULL,
    `Informacao_Motor` VARCHAR(45) NOT NULL,
    `Valor` VARCHAR(45) NOT NULL,
    `Vendas_id_vendas` INT DEFAULT NULL,
    PRIMARY KEY (`id_veiculos`),
    CONSTRAINT `fk_Veiculos_Vendas1` FOREIGN KEY (`Vendas_id_vendas`) REFERENCES `Vendas` (`id_vendas`)
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
        'Rua do SETúbal',
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
    (17, 
    17132202, 
    'Rua Domingos Leão',
    1173,
    'Parque são Miguel',
    'Agudos',
    'SP');

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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
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
VALUES
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

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        1,
        'Malvin',
        'Soane',
        'Vendedor',
        '120000,00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        2,
        'Erasmus',
        'Moreinu',
        'Vendedor',
        '200000,00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        3,
        'Gerrard',
        'Durbin',
        'Vendedor',
        '100000,00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        4,
        'Else',
        'Featherstone',
        'Vendedor',
        '17000,00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        5,
        'Carver',
        'McDonough',
        'Vendedor',
        '605000.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        6,
        'Conchita',
        'Camblin',
        'Vendedor',
        '10000.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        7,
        'Fraze',
        'Taylot',
        'Vendedor',
        '939000.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        8,
        'Natka',
        'Daughtery',
        'Vendedor',
        '68500.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        9,
        'Hasheem',
        'Iwanowski',
        'Vendedor',
        '10000.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        10,
        'Chas',
        'Vasyukhin',
        'Vendedor',
        '62900.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        11,
        'Powell',
        'Sprason',
        'Vendedor',
        '18500.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        12,
        'Solly',
        'Kincla',
        'Vendedor',
        '18500.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        13,
        'Selene',
        'Dymock',
        'Vendedor',
        '19400.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        14,
        'Gene',
        'Ibbett',
        'Vendedor',
        '14020.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        15,
        'Almeria',
        'Bowery',
        'Vendedor',
        '31400.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        16,
        'Kara-lynn',
        'Shmyr',
        'Vendedor',
        '50000.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        17,
        'Kristien',
        'Rowston',
        'Vendedor',
        '177400.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        18,
        'Carilyn',
        'Malicki',
        'Vendedor',
        '812400.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        19,
        'Alain',
        'Di Frisco',
        'Vendedor',
        '194090.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        20,
        'Caspar',
        'Tysack',
        'Vendedor',
        '194200.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        21,
        'Nollie',
        'Moulin',
        'Vendedor',
        '154400.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        22,
        'Channa',
        'Grinyakin',
        'Vendedor',
        '861800.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        23,
        'Adda',
        'Harsum',
        'Vendedor',
        '718800.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        24,
        'Carce',
        'Yoseloff',
        'Vendedor',
        '415800.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        25,
        'Carlo',
        'Goch',
        'Vendedor',
        '148050.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        26,
        'Ferdinande',
        'Klimek',
        'Vendedor',
        '918500.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        27,
        'Wald',
        'Northfield',
        'Vendedor',
        '185090.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        28,
        'Tish',
        'Pabel',
        'Vendedor',
        '185400.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        29,
        'Zachariah',
        'Shitliffe',
        'Vendedor',
        '418400.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        30,
        'Lion',
        'Peter',
        'Vendedor',
        '414800.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        31,
        'Annamaria',
        'Meadmore',
        'Vendedor',
        '298500.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        32,
        'Nikki',
        'Stevenson',
        'Vendedor',
        '55000.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        33,
        'Jacquie',
        'Hanes',
        'Vendedor',
        '750700.00'
    );

INSERT INTO
    Vendas (
        id_vendas,
        Nome_Func,
        Sobrenome_Func,
        Cargo,
        Preco_Total
    )
VALUES
    (
        34,
        'Lorry',
        'Petschelt',
        'Vendedor',
        '358000.00'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        1,
        'Cher',
        'Mingardo',
        68327908057,
        47997645600,
        'cmingardo0@wikia.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        2,
        'Lisa',
        'Chavrin',
        36133953047,
        9639246536,
        'lchavrin1@dropbox.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        3,
        'Dew',
        'Wreath',
        04772809007,
        6528103933,
        'dwreath2@barnesandnoble.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        4,
        'Vivianna',
        'Larkcum',
        27608644052,
        8137025531,
        'vlarkcum3@google.fr'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        5,
        'Marisa',
        'Reeds',
        22868057098,
        9632443923,
        'mreeds4@ucoz.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        6,
        'Eddie',
        'Bloxsome',
        82312462079,
        9835521786,
        'ebloxsome5@desdev.cn'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        7,
        'Herculie',
        'Rolling',
        59349641003,
        5120276532,
        'hrolling6@squidoo.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        8,
        'Robinet',
        'Bellas',
        82804778029,
        1324823738,
        'rbellas7@gov.uk'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        9,
        'Bobbie',
        'Jury',
        82358793019,
        6937838117,
        'bjury8@dropbox.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        10,
        'Jareb',
        'Pacht',
        24490520034,
        5438311012,
        'jpacht9@discovery.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        11,
        'Barny',
        'Girke',
        26109111066,
        9623511535,
        'bgirkea@biblegateway.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        12,
        'Ebeneser',
        'Grant',
        98427062060,
        8120685489,
        'egrantb@wikimedia.org'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        13,
        'Sybil',
        'Servant',
        40389628069,
        3538126012,
        'sservantc@businessinsider.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        14,
        'Everett',
        'Puttergill',
        51352467038,
        6831504189,
        'eputtergilld@webs.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        15,
        'Gabey',
        'Duffill',
        21987104048,
        8226538421,
        'gduffille@ycombinator.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        16,
        'Chantal',
        'Stavers',
        33253065006,
        6921311577,
        'cstaversf@acquirethisname.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        17,
        'Grove',
        'Marlowe',
        72129277080,
        9621115124,
        'gmarloweg@si.edu'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        18,
        'Beulah',
        'Drissell',
        68228646011,
        9832578389,
        'bdrissellh@domainmarket.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        19,
        'Cheslie',
        'Jammes',
        00228988080,
        8126433264,
        'cjammesi@who.int'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        20,
        'Dolorita',
        'Goeff',
        71093041080,
        5134770114,
        'dgoeffj@goo.gl'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        21,
        'Misty',
        'Paine',
        07615032008,
        8337152612,
        'mpainek@cbc.ca'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        22,
        'Rex',
        'Ketts',
        97918991001,
        6230677166,
        'rkettsl@msn.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        23,
        'Rice',
        'Di Maggio',
        78121413060,
        8436236634,
        'rdimaggiom@t.co'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        24,
        'Cornall',
        'Zorn',
        73634795000,
        8621387375,
        'czornn@wikipedia.org'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        25,
        'Olly',
        'Demsey',
        57345618005,
        2837397087,
        'odemseyo@howstuffworks.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        26,
        'Quintilla',
        'Alelsandrowicz',
        62499604069,
        4938622977,
        'qalelsandrowiczp@nih.gov'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        27,
        'Caryn',
        'Parken',
        94008312005,
        9727862507,
        'cparkenq@bizjournals.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        28,
        'Johnette',
        'Smallpeice',
        20675305004,
        6833384558,
        'jsmallpeicer@jimdo.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        29,
        'Addy',
        'Pearsey',
        51272181006,
        7925338115,
        'apearseys@apache.org'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        30,
        'Deanna',
        'Boldero',
        94075305074,
        9335731127,
        'dbolderot@wsj.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        31,
        'Vicki',
        'Epton',
        76049040095,
        7211375339,
        'veptonu@overblog.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        32,
        'Daryle',
        'Woolfall',
        84607315028,
        9625486882,
        'dwoolfallv@twitter.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        33,
        'Isidora',
        'Hylden',
        25355178090,
        6521356747,
        'ihyldenw@cpanel.net'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        34,
        'Filberte',
        'Maskelyne',
        49546275085,
        1335456372,
        'fmaskelynex@elegantthemes.com'
    );

INSERT INTO
    Clientes (
        id_cliente,
        Nome,
        Sobrenome,
        CPF,
        Telefone,
        Email
    )
VALUES
    (
        35,
        'Erin',
        'Colly',
        05441924004,
        4735895652,
        'ecollyy@boston.com'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        1,
        'Carro',
        'SAVANA',
        'Usado',
        'Mitsubishi',
        2018,
        '77.299',
        'Amarelo',
        'Automático',
        'Picape',
        'Diesel',
        '3.2 4x4 turbo',
        'R$ 184.900'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        2,
        'Carro',
        'RS3',
        'Usado',
        'Audi',
        2020,
        '17.000',
        'Vermelho',
        'Automático',
        'Hatchback',
        'Gasolina',
        '2.5 TSFI SportBack',
        'R$ 439.900'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        3,
        'Moto',
        'R 1250',
        'Usado',
        'BMW',
        2020,
        '1.200',
        'Azul-Branco',
        '6 Marchas',
        'Trail',
        'Gasolina',
        '1250 cilindrada',
        'R$ 106.900'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        4,
        'Carro',
        '300C',
        'Usado',
        'Chrysler',
        2009,
        '25.000',
        'Preto',
        'Automático',
        'Sedã',
        'Gasolina',
        '6.1 SRT8',
        'R$ 379.000'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        5,
        'Carro',
        'EDGE',
        'Usado',
        'Ford',
        2020,
        '37.000',
        'Branco',
        'Automático',
        'Utilitário Esportivo',
        'Gasolina',
        '2.7 V6',
        'R$ 279.900'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        6,
        'Carro',
        'HILUX SW4',
        'Usado',
        'Toyota',
        2021,
        '32.200',
        'Branco',
        'Automático',
        'Utilitario esportivo',
        'Diesel',
        '2.8 4x4 Turbo',
        'R$ 327.900'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        7,
        'Moto',
        'CG 160 TITAN S',
        'Usado',
        'Honda',
        2021,
        '11.500',
        'Branco-Vermelho',
        '5 Marchas',
        'Street',
        'Gasolina',
        '160 cilindrada',
        'R$ 14.450.00'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        8,
        'Carro',
        'FOCUS',
        'Usado',
        'Ford',
        2016,
        '92.000',
        'Preto',
        'Manual',
        'Hatchback',
        'Gasolina',
        '1.6 SE PLUS',
        'R$ 66.900'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        9,
        'Carro',
        'XC60',
        'Usado',
        'Volvo',
        2022,
        '11.000',
        'Cinza',
        'Automático',
        'Utilitário Esportivo',
        'Gasolina e elétrico',
        '2.0 T8',
        'R$ 379.990'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        10,
        'Carro',
        'EMIRA',
        'Novo',
        'Lotus',
        2023,
        '0',
        'Cinza',
        'Manual',
        'Cupê',
        'Gasolina',
        '3.5 V6 SUPERCHARGED',
        'R$ 1.600.000'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        11,
        'Carro',
        'LEGACY',
        'Usado',
        'Subaru',
        2015,
        '55.000',
        'Branco',
        'Automático',
        'Sedã',
        'Gasolina',
        '3.6 R 24V',
        'R$ 95.000'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        12,
        'Carro',
        'S-CROSS',
        'Usado',
        'Suzuki',
        2016,
        '102.228',
        'Branco',
        'Automático',
        'Utilitário Esportivo',
        'Gasolina',
        '1.6 16V',
        'R$ 74.900'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        13,
        'Carro',
        'RIO',
        'Usado',
        'Kia',
        2021,
        '22.887',
        'Azul',
        'Automático',
        'Hatchback',
        'Gasolina e álcool',
        '1.6 16V',
        'R$ 81.499'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        14,
        'Carro',
        'MX-5',
        'Usado',
        'Mazda',
        1995,
        '67.000',
        'Vermelho',
        'Manual',
        'Conversível',
        'Gasolina',
        '1.8 MIATA',
        'R$ 130.000'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        15,
        'Moto',
        'XJ6 F ',
        'Usado',
        'Yamaha',
        2012,
        '5.400',
        'Branco',
        '6 Marchas',
        'Esportiva',
        'Gasolina',
        '600 cilindrada',
        'R$ 39.990'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        16,
        'Carro',
        'SORENTO',
        'Usado',
        'Kia',
        2019,
        '62.896',
        'Cinza',
        'Automático',
        'Utilitário Esportivo',
        'Gasolina',
        '3.5 V6',
        'R$ 189.990'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        17,
        'Carro',
        'ELANTRA',
        'Usado',
        'Hyundai',
        2018,
        '55.000',
        'Prata',
        'Automático',
        'Sedã',
        'Gasolina',
        '2.0 16V',
        'R$ 84.990'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        18,
        'Carro',
        'KICKS',
        'Usado',
        'Nissan',
        2022,
        '46.000',
        'Azul',
        'Automático',
        'Utilitário Esportivo',
        'Gasolina e álcool',
        '1.6 16V',
        'R$ 121.900'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        19,
        'Carro',
        'RAM 2500',
        'Novo',
        'Dodge',
        2022,
        '0',
        'Branco',
        'Automático',
        'Picape',
        'Diesel',
        '6.7 2500 4x4 turbo',
        'R$ 459.990'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        20,
        'Carro',
        'SPORTAGE',
        'Usado',
        'Kia',
        2014,
        '109.000',
        'Prata',
        'Automático',
        'Utilitário Esportivo',
        'Gasolina e álcool',
        '2.0 LX 4x2',
        'R$ 76.900'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        21,
        'Carro',
        'SILVERADO 1500',
        'Usado',
        'Chevrolet',
        2022,
        '100',
        'Preto',
        'Automático',
        'Picape',
        'Diesel',
        '3.0 V6 LTZ',
        'R$ 989.900'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        22,
        'Moto',
        'HORNET',
        'Usado',
        'Honda',
        2014,
        '8.000',
        'Vermelho',
        '6 Marchas',
        'Esportiva',
        'Gasolina',
        '600 cilindrada',
        'R$ 60.000'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        23,
        'Carro',
        'SWIFT',
        'Usado',
        'Suzuki',
        2015,
        '104.000',
        'Azul',
        'Manual',
        'Hatchback',
        'Gasolina',
        '1.6 Sport 16V',
        'R$ 60.900'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        24,
        'Carro',
        'LEVANTE',
        'Novo',
        'Maserati',
        2019,
        '0',
        'Cinza',
        'Automático',
        'Utilitário Esportivo',
        'Gasolina',
        '3.0 V6 Turbo',
        '$ 789.900'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        25,
        'Carro',
        '911',
        'Usado',
        'Porsche',
        2021,
        '6.649',
        'Azul',
        'Automatica',
        'Cupê',
        'Gasolina',
        '3.0 24V',
        'R$ 1.449.000'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        26,
        'Carro',
        'L200 TRITON',
        'Usado',
        'Mitsubishi',
        2022,
        '21.500',
        'Prata',
        'Automático',
        'Picape',
        'Gasolina',
        '2.4 16V Turbo',
        'R$ 266.800'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        27,
        'Carro',
        'SUPRA',
        'Usado',
        'Toyota',
        1994,
        '89.000',
        'Roxo',
        'Manual',
        'Cupê',
        'Diesel',
        '3.0 24V BI-TURBO',
        '2.200.000'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        28,
        'Carro',
        'MX-3',
        'Usado',
        'Mazda',
        1995,
        '130.698',
        'Verde',
        'Manual',
        'Cupê',
        'Gasolina',
        '1.6 GS 16V',
        'R$ 35.000'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        29,
        'Moto',
        'GSX-S1000 ABS',
        'Usado',
        'Suzuki',
        2017,
        28.000,
        'Azul-Preto',
        '6 Marchas',
        'Esportiva',
        'Gasolina',
        '999 Cilindrada',
        'R$ 49.970'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        30,
        'Carro',
        'SIERRA',
        'Usado',
        'GMC',
        2023,
        '1.839',
        'Preto',
        'Automático',
        'Picape',
        'Gasolina',
        '6.2 V8 1500',
        'R$ 1.299.000'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        31,
        'Carro',
        'CLS 450',
        'Novo',
        'Mercedes-Benz',
        2019,
        '0',
        'Cinza',
        'Automático',
        'Sedã',
        'Gasolina',
        '3.0 I6',
        'R$ 499.900'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        32,
        'Carro',
        'CAMARO',
        'Usado',
        'Chevrolet',
        2019,
        '16.015',
        'Branco',
        'Automático',
        'Cupê',
        'Gasolina',
        '6.2 V8 SS',
        'R$ 409.900'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        33,
        'Carro',
        'MUSTANG',
        'Usado',
        'Ford',
        2021,
        '8.100',
        'Preto',
        'Automático',
        'Cupê',
        'Gasolina',
        '5.0 V8',
        'R$ 489.900'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        34,
        'Carro',
        'HUMMER',
        'Novo',
        'GMC',
        2022,
        0,
        'Branco',
        'Automático',
        'Picape',
        'Gasolina e elétrico',
        '350 KW EV 4x4',
        'R$ 2.499.990'
    );

INSERT INTO
    Veiculos (
        id_veiculos,
        Categoria,
        Modelo,
        Novo_Usado,
        Marca,
        Ano,
        Quilometragem,
        Cor,
        Cambio,
        Tipo,
        Combustivel,
        Informacao_Motor,
        Valor
    )
VALUES
    (
        35,
        'Carro',
        'GOLF',
        'Usado',
        'Volkswagen',
        2019,
        23.100,
        'Preto',
        'Automático',
        'Hatchback',
        'Gasolina',
        '2.0 350 GTI',
        'R$ 239.900'
    );

SELECT
    COUNT(*)
FROM
    Enderecos;

SELECT
    COUNT(*)
FROM
    Funcionarios;

SELECT
    COUNT(*)
FROM
    Vendas;

SELECT
    COUNT(*)
FROM
    Clientes;

SELECT
    COUNT(*)
FROM
    Veiculos;

SELECT
    *
FROM
    Enderecos
ORDER BY
    id_endereco;

SELECT
    *
FROM
    Funcionarios
ORDER BY
    id_funcionario;

SELECT
    *
FROM
    Vendas
ORDER BY
    id_vendas;

SELECT
    *
FROM
    Clientes
ORDER BY
    id_cliente;

SELECT
    *
FROM
    Vendas
ORDER BY
    id_Vendas;


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

UPDATE
    Funcionarios
SET
    Nome = 'Tiago'
WHERE
    id_funcionario = 26;

UPDATE
    Funcionarios
SET
    Nome = 'Antonio'
WHERE
    id_funcionario = 27;

UPDATE
    Funcionarios
SET
    Nome = 'Joao'
WHERE
    id_funcionario = 28;

UPDATE
    Funcionarios
SET
    Nome = 'Lucas'
WHERE
    id_funcionario = 29;

UPDATE
    Funcionarios
SET
    Nome = 'Bruno'
WHERE
    id_funcionario = 30;

UPDATE
    Funcionarios
SET
    Nome = 'Joaquim'
WHERE
    id_funcionario = 31;

UPDATE
    Funcionarios
SET
    Nome = 'Ricardo'
WHERE
    id_funcionario = 32;

UPDATE
    Funcionarios
SET
    Nome = 'Luiz'
WHERE
    id_funcionario = 33;

UPDATE
    Funcionarios
SET
    Nome = 'Eric'
WHERE
    id_funcionario = 34;

UPDATE
    Funcionarios
SET
    Nome = 'Gabriel'
WHERE
    id_funcionario = 35;

UPDATE
    Vendas
SET
    Nome_Func = 'Andrew'
WHERE
    id_vendas = 25;

UPDATE
    Vendas
SET
    Nome_Func = 'Pedro'
WHERE
    id_vendas = 26;

UPDATE
    Vendas
SET
    Nome_Func = 'Lucas'
WHERE
    id_vendas = 27;

UPDATE
    Vendas
SET
    Nome_Func = 'Tiago'
WHERE
    id_vendas = 28;

UPDATE
    Vendas
SET
    Nome_Func = 'Luiz'
WHERE
    id_vendas = 29;

UPDATE
    Vendas
SET
    Nome_Func = 'Inacio'
WHERE
    id_vendas = 30;

UPDATE
    Vendas
SET
    Nome_Func = 'Gabriel'
WHERE
    id_vendas = 31;

UPDATE
    Vendas
SET
    Nome_Func = 'Erik'
WHERE
    id_vendas = 32;

UPDATE
    Vendas
SET
    Nome_Func = 'Reinaldo'
WHERE
    id_vendas = 33;

UPDATE
    Vendas
SET
    Nome_Func = 'Jair'
WHERE
    id_vendas = 34;

UPDATE
    Clientes
SET
    Email = 'ecolly@Eccos.com'
WHERE
    id_cliente = 35;

UPDATE
    Clientes
SET
    Nome = 'Gabriel'
WHERE
    id_cliente = 1;

UPDATE
    Clientes
SET
    Sobrenome = 'Rothermel'
WHERE
    id_cliente = 1;

UPDATE
    Clientes
SET
    CPF = 14851943938
WHERE
    id_cliente = 1;

UPDATE
    Clientes
SET
    Telefone = 4797645600
WHERE
    id_cliente = 1;

UPDATE
    Clientes
SET
    Email = 'Gabriel.LuizRothermel@gmail.com'
WHERE
    id_cliente = 1;

UPDATE
    Clientes
SET
    Nome = 'João'
WHERE
    id_cliente = 2;

UPDATE
    Clientes
SET
    Sobrenome = 'Maffezzolli'
WHERE
    id_cliente = 2;

UPDATE
    Clientes
SET
    CPF = 07170179904
WHERE
    id_cliente = 2;

UPDATE
    Clientes
SET
    Telefone = 4792767478
WHERE
    id_cliente = 2;

UPDATE
    Veiculos
SET
    Modelo = 'JETTA'
WHERE
    id_veiculos = 10;

UPDATE
    Veiculos
SET
    Novo_Usado = 'Usado'
WHERE
    id_veiculos = 10;

UPDATE
    Veiculos
SET
    Marca = 'Volkswagen'
WHERE
    id_veiculos = 10;

UPDATE
    Veiculos
SET
    Ano = 2016
WHERE
    id_veiculos = 10;

UPDATE
    Veiculos
SET
    Quilometragem = '61.800'
WHERE
    id_veiculos = 10;

UPDATE
    Veiculos
SET
    Cor = 'Branco'
WHERE
    id_veiculos = 10;

UPDATE
    Veiculos
SET
    Cambio = 'Automatico'
WHERE
    id_veiculos = 10;

UPDATE
    Veiculos
SET
    Tipo = 'Sedã'
WHERE
    id_veiculos = 10;

UPDATE
    Veiculos
SET
    Informacao_Motor = '2.0 TSI HIGHLINE 211CV'
WHERE
    id_veiculos = 10;

UPDATE
    Veiculos
SET
    Valor = 'R$ 93.900'
WHERE
    id_veiculos = 10;

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

DELETE FROM
    Funcionarios
WHERE
    id_funcionario = 33;

DELETE FROM
    Funcionarios
WHERE
    id_funcionario = 30;

DELETE FROM
    Funcionarios
WHERE
    id_funcionario = 25;

DELETE FROM
    Funcionarios
WHERE
    id_funcionario = 24;

DELETE FROM
    Funcionarios
WHERE
    id_funcionario = 17;

DELETE FROM
    Vendas
WHERE
    id_vendas = 2;

DELETE FROM
    Vendas
WHERE
    id_vendas = 9;

DELETE FROM
    Vendas
WHERE
    id_vendas = 11;

DELETE FROM
    Vendas
WHERE
    id_vendas = 16;

DELETE FROM
    Vendas
WHERE
    id_vendas = 19;

DELETE FROM
    Clientes
WHERE
    id_cliente = 34;

DELETE FROM
    Clientes
WHERE
    id_cliente = 26;

DELETE FROM
    Clientes
WHERE
    id_cliente = 23;

DELETE FROM
    Clientes
WHERE
    id_cliente = 18;

DELETE FROM
    Clientes
WHERE
    id_cliente = 7;

DELETE FROM
    Vendas
WHERE
    id_vendas = 19;

DELETE FROM
    Vendas
WHERE
    id_vendas = 18;

DELETE FROM
    Vendas
WHERE
    id_vendas = 27;

DELETE FROM
    Vendas
WHERE
    id_vendas = 32;

DELETE FROM
    Vendas
WHERE
    id_vendas = 11;

DELETE FROM
    Veiculos
WHERE
    id_veiculos = 4;

DELETE FROM
    Veiculos
WHERE
    id_veiculos = 23;

DELETE FROM
    Veiculos
WHERE
    id_veiculos = 33;

DELETE FROM
    Veiculos
WHERE
    id_veiculos = 34;

DELETE FROM
    Veiculos
WHERE
    id_veiculos = 2