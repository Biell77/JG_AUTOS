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

    