-- Cria o banco de dados
CREATE DATABASE IF NOT EXISTS JG_AUTOS;

-- Usa o banco de dados JG_AUTOS
USE JG_AUTOS;

--
CREATE TABLE IF NOT EXISTS `Enderecos` (
  `id_endereco` INT NOT NULL,
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
  `CPF` BIGINT(11) NOT NULL,
  `Telefone` BIGINT(11) NOT NULL,
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
  `CPF` BIGINT(11) NOT NULL,
  `Telefone` BIGINT(11) NOT NULL,
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