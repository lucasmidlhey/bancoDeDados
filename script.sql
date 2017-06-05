-- MySQL Script generated by MySQL Workbench
-- Seg 05 Jun 2017 13:48:47 BRT
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Uf`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Uf` (
  `id_uf` INT UNSIGNED NOT NULL COMMENT ' \nValor único do identificador de um tipo de telefone.\n',
  `nome_uf` VARCHAR(45) NULL COMMENT ' \nDescreve no nome da Unidade Federativa. Ex: Rio de Janeiro\n',
  PRIMARY KEY (`id_uf`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cidade` (
  `id_cidade` INT UNSIGNED NOT NULL COMMENT ' Valor único identificador de uma cidade. \n',
  `nome_cidade` VARCHAR(45) NULL COMMENT ' Representa o nome da cidade. Ex: Rio de Janeiro.\n',
  `Uf_id_uf` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira identificando a Unidade Federativa a qual a cidade pertence.\n',
  PRIMARY KEY (`id_cidade`),
  INDEX `fk_Cidade_Uf1_idx` (`Uf_id_uf` ASC),
  CONSTRAINT `fk_Cidade_Uf1`
    FOREIGN KEY (`Uf_id_uf`)
    REFERENCES `mydb`.`Uf` (`id_uf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Bairro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Bairro` (
  `id_bairro` INT UNSIGNED NOT NULL COMMENT 'Valor único identificador de um bairro.',
  `nome_bairro` VARCHAR(45) NULL COMMENT 'Nome completo do bairro.',
  `Cidade_id_cidade` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira identificando a Cidade a qual o Bairro pertence.\n',
  PRIMARY KEY (`id_bairro`),
  INDEX `fk_Bairro_Cidade1_idx` (`Cidade_id_cidade` ASC),
  CONSTRAINT `fk_Bairro_Cidade1`
    FOREIGN KEY (`Cidade_id_cidade`)
    REFERENCES `mydb`.`Cidade` (`id_cidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TipoLogradouro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoLogradouro` (
  `id_tipo_logradouro` INT UNSIGNED NOT NULL COMMENT 'Valor único do identificador de um tipo de logradouro. \n',
  `descricao_tipo_logradouro` VARCHAR(45) NULL COMMENT 'Descreve o tipo do Logradouro. Ex: praça, rua, avenida.',
  PRIMARY KEY (`id_tipo_logradouro`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Logradouro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Logradouro` (
  `id_logradouro` INT UNSIGNED NOT NULL COMMENT 'Valor único identificador de um Logradouro.',
  `descricao_logradouro` VARCHAR(45) NULL COMMENT 'Nome do Logradouro. Ex: Quinta Avenida, Rua das Flores etc. ',
  `Bairro_id_bairro` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que representa a identificação de um Bairro \na qual o Logradouro pertence.\n',
  `TipoLogradouro_id_tipo_logradouro` INT UNSIGNED NOT NULL COMMENT ' Chave estrangeira que representa a identificação de um tipo de Logradouro.',
  PRIMARY KEY (`id_logradouro`),
  INDEX `fk_Rua_Bairro1_idx` (`Bairro_id_bairro` ASC),
  INDEX `fk_Logradouro_TipoLogradouro1_idx` (`TipoLogradouro_id_tipo_logradouro` ASC),
  CONSTRAINT `fk_Rua_Bairro1`
    FOREIGN KEY (`Bairro_id_bairro`)
    REFERENCES `mydb`.`Bairro` (`id_bairro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Logradouro_TipoLogradouro1`
    FOREIGN KEY (`TipoLogradouro_id_tipo_logradouro`)
    REFERENCES `mydb`.`TipoLogradouro` (`id_tipo_logradouro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Endereco` (
  `id_endereco` INT UNSIGNED NOT NULL COMMENT ' Valor único identificador de um endereço.\n',
  `complemento` VARCHAR(45) NULL COMMENT ' Descreve um complemento algo próximo ao endereço. \nEx: Próximo ao terminal rodoviário. \n',
  `numero` INT NULL COMMENT ' Número da residência do cidadão\n',
  `Logradouro_id_logradouro` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira identificando o Logradouro.',
  PRIMARY KEY (`id_endereco`),
  INDEX `fk_Endereco_Logradouro1_idx` (`Logradouro_id_logradouro` ASC),
  CONSTRAINT `fk_Endereco_Logradouro1`
    FOREIGN KEY (`Logradouro_id_logradouro`)
    REFERENCES `mydb`.`Logradouro` (`id_logradouro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Buraco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Buraco` (
  `id_buraco` INT UNSIGNED NOT NULL COMMENT ' Valor único identificador de um buraco.\n',
  `tamanho_buraco` INT NOT NULL COMMENT ' Valor de 1 a 10 que representa a escala do tamanho proporcional de um buraco, \nquanto mais próximo de 10 maior é o buraco. \n',
  `prioridade_buraco` INT NOT NULL COMMENT ' Valor de 1 a 10 que representa a prioridade de atendimento para o buraco, \nsendo que 1 é a prioridade menor e 10 a maior. \n',
  `Endereco_id_endereco` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_buraco`),
  INDEX `fk_Buraco_Endereco1_idx` (`Endereco_id_endereco` ASC),
  CONSTRAINT `fk_Buraco_Endereco1`
    FOREIGN KEY (`Endereco_id_endereco`)
    REFERENCES `mydb`.`Endereco` (`id_endereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Naturalidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Naturalidade` (
  `id_naturalidade` INT UNSIGNED NOT NULL COMMENT ' \nValor único do identificador de um material de enchimento.\n',
  `descricao_naturalidade` VARCHAR(45) NULL COMMENT ' Representa o nome da localidade/Cidade onde o indivíduo nasceu. \nExemplo: Rio de Janeiro\n',
  `Uf_id_uf` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que indentifica a Unidade Federativa a qual a Naturalidade está relacionada.\nEx: Ceará.',
  PRIMARY KEY (`id_naturalidade`),
  INDEX `fk_Naturalidade_Uf1_idx` (`Uf_id_uf` ASC),
  CONSTRAINT `fk_Naturalidade_Uf1`
    FOREIGN KEY (`Uf_id_uf`)
    REFERENCES `mydb`.`Uf` (`id_uf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TipoDano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoDano` (
  `id_tipo_dano` INT UNSIGNED NOT NULL COMMENT 'Chave única que identifica o tipo do dano.',
  `descricao_tipo_dano` VARCHAR(45) NOT NULL COMMENT 'Descreve o tipo do dano sofrido. Ex: Suspensão, Roda.',
  PRIMARY KEY (`id_tipo_dano`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Dano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Dano` (
  `id_dano` INT UNSIGNED NOT NULL COMMENT 'Identificador único do Dano',
  `valor_dano` DOUBLE NULL COMMENT 'Valor declarado pelo cliente pelo dano sofrido.',
  `TipoDano_id_tipo_dano` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que identifica o tipo do Dano.',
  PRIMARY KEY (`id_dano`),
  INDEX `fk_Dano_TipoDano1_idx` (`TipoDano_id_tipo_dano` ASC),
  CONSTRAINT `fk_Dano_TipoDano1`
    FOREIGN KEY (`TipoDano_id_tipo_dano`)
    REFERENCES `mydb`.`TipoDano` (`id_tipo_dano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cidadao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cidadao` (
  `id_cidadao` INT UNSIGNED NOT NULL COMMENT ' Valor único identificador de um cidadão.\n\n',
  `nome_cidadao` VARCHAR(45) NOT NULL COMMENT ' Representa o nome completo por extenso de um indivíduo (cidadão) \nEx: Joao Maria das Neves.\n',
  `nome_pai_cidadao` VARCHAR(45) NULL COMMENT ' Representa o nome completo por extenso de um indivíduo pai de um cidadão \nEx: Joao Maria das Neves.\n',
  `nome_mae_cidadao` VARCHAR(45) NULL COMMENT ' Representa o nome completo por extenso de um indivíduo mãe de um cidadão \nEx: Maria das Neves.\n',
  `sexo_cidadao` CHAR(1) NOT NULL COMMENT ' Caractere que representa o sexo de um cidadão (M) Masculino e (F) Feminino.\n',
  `estado_civil_cidadao` VARCHAR(45) NULL COMMENT ' Representa o estado civil do cidadão como \nSolteiro(a), Casado(a), Divorciado(a), Viúvo(a), Separado(a).\n',
  `email_cidadao` VARCHAR(45) NULL COMMENT ' Nome da conta de email ativa do cidadão.\n',
  `rg_cidadao` VARCHAR(45) NOT NULL COMMENT ' Representa o número do Registro Geral do cidadão.\n',
  `cpf_cidadao` VARCHAR(45) NOT NULL COMMENT ' Representa o número no Cadastro de Pessoa Física do cidadão.\n',
  `escolaridade_cidadao` VARCHAR(45) NULL COMMENT ' Representa o nível de ensino do cidadão: Fundamental Completo, \nEnsino Médio Completo, Ensino Técnico Completo, Ensino Superior Completo.\n',
  `Endereço_id_endereco` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira identificando o endereço pertencente ao Cidadão.',
  `Naturalidade_id_naturalidade` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que identifica a Naturalidade do Cidadão.',
  `Dano_id_dano` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que identifica o Dano sofrido pelo Cidadão.\n',
  PRIMARY KEY (`id_cidadao`),
  INDEX `fk_Cidadao_Endereço1_idx` (`Endereço_id_endereco` ASC),
  INDEX `fk_Cidadao_Naturalidade1_idx` (`Naturalidade_id_naturalidade` ASC),
  INDEX `fk_Cidadao_Dano1_idx` (`Dano_id_dano` ASC),
  CONSTRAINT `fk_Cidadao_Endereço1`
    FOREIGN KEY (`Endereço_id_endereco`)
    REFERENCES `mydb`.`Endereco` (`id_endereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cidadao_Naturalidade1`
    FOREIGN KEY (`Naturalidade_id_naturalidade`)
    REFERENCES `mydb`.`Naturalidade` (`id_naturalidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cidadao_Dano1`
    FOREIGN KEY (`Dano_id_dano`)
    REFERENCES `mydb`.`Dano` (`id_dano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Departamento` (
  `id_departamento` INT UNSIGNED NOT NULL COMMENT 'Chave única que identifica o Departamento.',
  `descricao_departamento` VARCHAR(45) NOT NULL COMMENT 'Descreve o Departamento. \nEx: Departamento da Nona Região, Departamento do Bairro das Flores.',
  PRIMARY KEY (`id_departamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TipoTelefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoTelefone` (
  `id_tipo_fone` INT NOT NULL COMMENT ' \nValor único do identificador de um tipo de telefone.\n',
  `descricao_tipo_fone` VARCHAR(45) NOT NULL COMMENT ' \nDescrição do tipo de telefone. Ex: Residêncial, comercial, etc. \n',
  PRIMARY KEY (`id_tipo_fone`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Telefone` (
  `id_telefone` INT NOT NULL COMMENT ' Valor único do identificador de um número de telefone.\n',
  `descricao_telefone` VARCHAR(45) NULL COMMENT ' Número de telefone.\n',
  `TipoTelefone_id_tipo_fone` INT NOT NULL COMMENT 'Chave estrangeira que identifica o Tipo do Telefone.',
  INDEX `fk_Telefone_TipoTelefone1_idx` (`TipoTelefone_id_tipo_fone` ASC),
  PRIMARY KEY (`id_telefone`),
  CONSTRAINT `fk_Telefone_TipoTelefone1`
    FOREIGN KEY (`TipoTelefone_id_tipo_fone`)
    REFERENCES `mydb`.`TipoTelefone` (`id_tipo_fone`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`EquipeReparo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EquipeReparo` (
  `id_equipe_reparo` INT UNSIGNED NOT NULL COMMENT ' Valor único do identificador de uma equipe de reparo. \n',
  `numero_de_pessoas` INT NOT NULL COMMENT ' Representa a quantidade de pessoas em uma equipe de reparo.\n',
  `custo_hora` DOUBLE NULL COMMENT 'Valor do custo por hora da equipe de reparo.',
  `Departamento_id_departamento` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que identifica o Departamento a qual a Equipe de Reparo pertence.\n',
  PRIMARY KEY (`id_equipe_reparo`),
  INDEX `fk_EquipeReparo_Departamento1_idx` (`Departamento_id_departamento` ASC),
  CONSTRAINT `fk_EquipeReparo_Departamento1`
    FOREIGN KEY (`Departamento_id_departamento`)
    REFERENCES `mydb`.`Departamento` (`id_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TipoMaterialEnchimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoMaterialEnchimento` (
  `id_tipo_material_enchimento` INT UNSIGNED NOT NULL COMMENT ' \nValor único do identificador de um tipo de material de enchimento. \n',
  `descricao_tipo_material_enchimento` VARCHAR(45) NULL COMMENT ' \nDescrição do tipo de material de enchimento. Ex: Brita.\n',
  PRIMARY KEY (`id_tipo_material_enchimento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`MaterialEnchimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`MaterialEnchimento` (
  `id_material_enchimento` INT UNSIGNED NOT NULL COMMENT ' \nValor único do identificador de um material de enchimento. \n',
  `custo_material_de_enchimento` DOUBLE NULL COMMENT 'Custo do Material de Enchimento',
  `TipoMaterialEnchimento_id_tipo_material_enchimento` INT UNSIGNED NOT NULL COMMENT 'Identifica o tipo do Material de Enchimento.',
  PRIMARY KEY (`id_material_enchimento`),
  INDEX `fk_MaterialEnchimento_TipoMaterialEnchimento1_idx` (`TipoMaterialEnchimento_id_tipo_material_enchimento` ASC),
  CONSTRAINT `fk_MaterialEnchimento_TipoMaterialEnchimento1`
    FOREIGN KEY (`TipoMaterialEnchimento_id_tipo_material_enchimento`)
    REFERENCES `mydb`.`TipoMaterialEnchimento` (`id_tipo_material_enchimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`OrdemTrabalho`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`OrdemTrabalho` (
  `id_ordem_trabalho` INT UNSIGNED NOT NULL COMMENT ' \nValor único do identificador de uma ordem de trabalho.\n',
  `status_reparo` VARCHAR(45) NULL COMMENT ' \nRepresenta o status do reparo: Em andamento, realizado ou cancelado.  \n',
  `horas_de_trabalho` VARCHAR(45) NOT NULL COMMENT ' \nTempo gasto para realização do reparo de um buraco.   \n',
  `quantidade_material_enchimento` INT NULL COMMENT 'Descreve a quantidade de material de enchimento utilizado no reparo.',
  `custo_reparo` DOUBLE NULL COMMENT 'É calculado a partir da quantidade de horas_de_trabalho, \nquantidade_material_enchimento.',
  `Buraco_id_buraco` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que identifica o Buraco a qual a Ordem de Trabalho está relacionada.',
  `EquipeReparo_id_equipe_reparo` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que identifica a Equipe de Reparo designada para executar\n a Ordem de Trabalho.',
  `MaterialEnchimento_id_material_enchimento` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que identifica o Material de Enchimento \nutilizado na Ordem de Trabalho.',
  PRIMARY KEY (`id_ordem_trabalho`),
  INDEX `fk_OrdemTrabalho_Buraco1_idx` (`Buraco_id_buraco` ASC),
  INDEX `fk_OrdemTrabalho_EquipeReparo1_idx` (`EquipeReparo_id_equipe_reparo` ASC),
  INDEX `fk_OrdemTrabalho_MaterialEnchimento1_idx` (`MaterialEnchimento_id_material_enchimento` ASC),
  CONSTRAINT `fk_OrdemTrabalho_Buraco1`
    FOREIGN KEY (`Buraco_id_buraco`)
    REFERENCES `mydb`.`Buraco` (`id_buraco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrdemTrabalho_EquipeReparo1`
    FOREIGN KEY (`EquipeReparo_id_equipe_reparo`)
    REFERENCES `mydb`.`EquipeReparo` (`id_equipe_reparo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrdemTrabalho_MaterialEnchimento1`
    FOREIGN KEY (`MaterialEnchimento_id_material_enchimento`)
    REFERENCES `mydb`.`MaterialEnchimento` (`id_material_enchimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cargo` (
  `id_cargo` INT UNSIGNED NOT NULL COMMENT ' Valor único identificador de um cargo.\n',
  `descricao_cargo` VARCHAR(45) NULL COMMENT 'Representa o nome do cargo. Ex: Mestre de obras.\n',
  `Departamento_id_departamento` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que aponta para o identificador do \nDepartamento a qual o Cargo está relacionado.',
  PRIMARY KEY (`id_cargo`),
  INDEX `fk_Cargo_Departamento1_idx` (`Departamento_id_departamento` ASC),
  CONSTRAINT `fk_Cargo_Departamento1`
    FOREIGN KEY (`Departamento_id_departamento`)
    REFERENCES `mydb`.`Departamento` (`id_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Funcionario` (
  `id_funcionario` INT UNSIGNED NOT NULL COMMENT 'Valor único do identificador de um funcionário. ',
  `nome_funcionario` VARCHAR(45) NOT NULL COMMENT 'Representa o nome completo \npor extenso de um indivíduo (Funcionário) Ex: Joao Maria das Neves.',
  `nome_pai_funcionario` VARCHAR(45) NULL COMMENT 'Representa o nome completo por extenso de um indivíduo pai de um funcionário. Ex: Joao Maria das Neves.',
  `nome_mae_funcionario` VARCHAR(45) NULL COMMENT ' Representa o nome completo por extenso de um indivíduo mãe de um cidadão.\nEx: Maria das Neves Souza.\n',
  `sexo_funcionario` VARCHAR(45) NOT NULL COMMENT ' \nCaractere que representa o sexo de um funcionário (M) Masculino e (F) Feminino.\n',
  `estado_civil_funcionario` VARCHAR(45) NULL COMMENT ' Representa o estado civil do funcionário como Solteiro(a), Casado(a), \nDivorciado(a), Viúvo(a), Separado(a).\n',
  `email_funcionario` VARCHAR(45) NOT NULL COMMENT ' Nome da conta de email ativa do cidadão.\n',
  `rg_funcionario` INT NOT NULL COMMENT ' Representa o número do Registro Geral do funcionário.\n',
  `cpf_funcionario` INT NOT NULL COMMENT ' Representa o número no Cadastro de Pessoas Físicas do funcionário.\n',
  `escolaridade_funcionario` VARCHAR(45) NULL COMMENT ' Representa o nível de ensino do funcionário: Fundamental Completo, \nEnsino Médio Completo, Ensino Técnico Completo, Ensino Superior Completo\n',
  `Naturalidade_id_naturalidade` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que identifica a Naturalidade do Funcionario.',
  `Endereco_id_endereco` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que identifica o Endereço do funcionario.',
  `Cargo_id_cargo` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que identifica o Cargo do Funcionário.\n',
  `EquipeReparo_id_equipe_reparo` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que identifica a Equipe de Reparo a qual o Funcionário pertence.',
  PRIMARY KEY (`id_funcionario`),
  INDEX `fk_Funcionario_Naturalidade1_idx` (`Naturalidade_id_naturalidade` ASC),
  INDEX `fk_Funcionario_Endereço1_idx` (`Endereco_id_endereco` ASC),
  INDEX `fk_Funcionario_Cargo1_idx` (`Cargo_id_cargo` ASC),
  INDEX `fk_Funcionario_EquipeReparo1_idx` (`EquipeReparo_id_equipe_reparo` ASC),
  CONSTRAINT `fk_Funcionario_Naturalidade1`
    FOREIGN KEY (`Naturalidade_id_naturalidade`)
    REFERENCES `mydb`.`Naturalidade` (`id_naturalidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Funcionario_Endereço1`
    FOREIGN KEY (`Endereco_id_endereco`)
    REFERENCES `mydb`.`Endereco` (`id_endereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Funcionario_Cargo1`
    FOREIGN KEY (`Cargo_id_cargo`)
    REFERENCES `mydb`.`Cargo` (`id_cargo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Funcionario_EquipeReparo1`
    FOREIGN KEY (`EquipeReparo_id_equipe_reparo`)
    REFERENCES `mydb`.`EquipeReparo` (`id_equipe_reparo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TipoEquipamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoEquipamento` (
  `id_tipo_equipamento` INT UNSIGNED NOT NULL COMMENT ' \nValor único do identificador de um tipo de equipamento.\n',
  `descricao_tipo_equipamento` VARCHAR(45) NOT NULL COMMENT ' \nDescrição do tipo do equipamento: Exemplos: Hidráulico, de carga, etc.\n',
  PRIMARY KEY (`id_tipo_equipamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Fornecedor` (
  `id_fornecedor` INT UNSIGNED NOT NULL COMMENT ' Valor único do identificador de uma equipe de reparo. \n',
  `nome_fornecedor` VARCHAR(45) NOT NULL COMMENT ' Descreve o nome do fornecedor. Ex: Empresa X\n',
  `descricao_fornecedor` VARCHAR(45) NULL COMMENT 'Descreve o que o fornecedor fornece por exemplo.\n Ex: Fornece cimentos do tipo X etc.',
  `cnpj_fornecedor` INT UNSIGNED NOT NULL COMMENT ' Número único que identifica uma pessoa jurídica e \noutros tipos de arranjo jurídico sem personalidade jurídica.\n',
  PRIMARY KEY (`id_fornecedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Equipamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Equipamento` (
  `id_equipamento` INT UNSIGNED NOT NULL COMMENT ' Valor único identificador de um equipamento. \n',
  `nome_equipamento` VARCHAR(45) NULL COMMENT ' Descreve o nome do equipamento. Ex: Carrinho de mão.\n',
  `preco_equipamento` VARCHAR(45) NULL COMMENT 'Descreve o preço do equipamento.\n',
  `TipoEquipamento_id_tipo_equipamento` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que identifica o Tipo do Equipamento.',
  `EquipeReparo_id_equipe_reparo` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira identificando a Equipe de Reparo que está utilizando o equipamento. ',
  PRIMARY KEY (`id_equipamento`),
  INDEX `fk_Equipamento_TipoEquipamento1_idx` (`TipoEquipamento_id_tipo_equipamento` ASC),
  INDEX `fk_Equipamento_EquipeReparo1_idx` (`EquipeReparo_id_equipe_reparo` ASC),
  CONSTRAINT `fk_Equipamento_TipoEquipamento1`
    FOREIGN KEY (`TipoEquipamento_id_tipo_equipamento`)
    REFERENCES `mydb`.`TipoEquipamento` (`id_tipo_equipamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Equipamento_EquipeReparo1`
    FOREIGN KEY (`EquipeReparo_id_equipe_reparo`)
    REFERENCES `mydb`.`EquipeReparo` (`id_equipe_reparo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TipoIndenizacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoIndenizacao` (
  `id_tipo_indenizacao` INT UNSIGNED NOT NULL COMMENT ' \nValor único do identificador de um tipo de indenização.\n',
  `descricao_indenizacao` VARCHAR(45) NOT NULL COMMENT ' Descrição do tipo de indenizaçao.\nEx: Cheque, deposito, dinheiro em especíe, etc.\n',
  PRIMARY KEY (`id_tipo_indenizacao`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Indenizacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Indenizacao` (
  `id_indenizacao` INT UNSIGNED NOT NULL COMMENT ' \nValor único do identificador de um idenização. \n',
  `status_indenizacao` VARCHAR(45) NULL COMMENT ' Representa o status da indenização:  Indenização Paga, Indenização atrasada, \nIndenização em processo, Indenização cancelada. \n',
  `valor_indenizacao` DOUBLE NULL COMMENT 'Identifica o valor da Indenização. Ex: 550,35',
  `TipoIndenizacao_id_tipo_indenizacao` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que identifica o tipo do pagamento da Indenização.',
  `Dano_id_dano` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que identifica o Dano a qual a Indenização se relaciona.',
  `Cidadao_id_cidadao` INT UNSIGNED NOT NULL COMMENT 'Chave estrangeira que identifica o Cidadão a qual a Indenização está relacionada. ',
  PRIMARY KEY (`id_indenizacao`),
  INDEX `fk_Indenizacao_TipoIndenizacao1_idx` (`TipoIndenizacao_id_tipo_indenizacao` ASC),
  INDEX `fk_Indenizacao_Dano1_idx` (`Dano_id_dano` ASC),
  INDEX `fk_Indenizacao_Cidadao1_idx` (`Cidadao_id_cidadao` ASC),
  CONSTRAINT `fk_Indenizacao_TipoIndenizacao1`
    FOREIGN KEY (`TipoIndenizacao_id_tipo_indenizacao`)
    REFERENCES `mydb`.`TipoIndenizacao` (`id_tipo_indenizacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Indenizacao_Dano1`
    FOREIGN KEY (`Dano_id_dano`)
    REFERENCES `mydb`.`Dano` (`id_dano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Indenizacao_Cidadao1`
    FOREIGN KEY (`Cidadao_id_cidadao`)
    REFERENCES `mydb`.`Cidadao` (`id_cidadao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cidadao_has_Telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cidadao_has_Telefone` (
  `Cidadao_id_cidadao` INT UNSIGNED NOT NULL COMMENT 'Identifica o Cidadão que possui o Telefone.',
  `Telefone_id_telefone` INT NOT NULL COMMENT 'Identifica o Telefone fornecido pelo Cidadão.',
  PRIMARY KEY (`Cidadao_id_cidadao`, `Telefone_id_telefone`),
  INDEX `fk_Cidadao_has_Telefone_Telefone1_idx` (`Telefone_id_telefone` ASC),
  INDEX `fk_Cidadao_has_Telefone_Cidadao1_idx` (`Cidadao_id_cidadao` ASC),
  CONSTRAINT `fk_Cidadao_has_Telefone_Cidadao1`
    FOREIGN KEY (`Cidadao_id_cidadao`)
    REFERENCES `mydb`.`Cidadao` (`id_cidadao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cidadao_has_Telefone_Telefone1`
    FOREIGN KEY (`Telefone_id_telefone`)
    REFERENCES `mydb`.`Telefone` (`id_telefone`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`MaterialEnchimento_has_Fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`MaterialEnchimento_has_Fornecedor` (
  `MaterialEnchimento_id_material_enchimento` INT UNSIGNED NOT NULL COMMENT 'Identificador do Material de Enchimento',
  `Fornecedor_id_fornecedor` INT UNSIGNED NOT NULL COMMENT 'Identificador do Fornecedor',
  PRIMARY KEY (`MaterialEnchimento_id_material_enchimento`, `Fornecedor_id_fornecedor`),
  INDEX `fk_MaterialEnchimento_has_Fornecedor_Fornecedor1_idx` (`Fornecedor_id_fornecedor` ASC),
  INDEX `fk_MaterialEnchimento_has_Fornecedor_MaterialEnchimento1_idx` (`MaterialEnchimento_id_material_enchimento` ASC),
  CONSTRAINT `fk_MaterialEnchimento_has_Fornecedor_MaterialEnchimento1`
    FOREIGN KEY (`MaterialEnchimento_id_material_enchimento`)
    REFERENCES `mydb`.`MaterialEnchimento` (`id_material_enchimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_MaterialEnchimento_has_Fornecedor_Fornecedor1`
    FOREIGN KEY (`Fornecedor_id_fornecedor`)
    REFERENCES `mydb`.`Fornecedor` (`id_fornecedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Equipamento_has_Fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Equipamento_has_Fornecedor` (
  `Equipamento_id_equipamento` INT UNSIGNED NOT NULL COMMENT 'Identificador do Equipamento',
  `Fornecedor_id_fornecedor` INT UNSIGNED NOT NULL COMMENT 'Identificador do Fornecedor',
  PRIMARY KEY (`Equipamento_id_equipamento`, `Fornecedor_id_fornecedor`),
  INDEX `fk_Equipamento_has_Fornecedor_Fornecedor1_idx` (`Fornecedor_id_fornecedor` ASC),
  INDEX `fk_Equipamento_has_Fornecedor_Equipamento1_idx` (`Equipamento_id_equipamento` ASC),
  CONSTRAINT `fk_Equipamento_has_Fornecedor_Equipamento1`
    FOREIGN KEY (`Equipamento_id_equipamento`)
    REFERENCES `mydb`.`Equipamento` (`id_equipamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Equipamento_has_Fornecedor_Fornecedor1`
    FOREIGN KEY (`Fornecedor_id_fornecedor`)
    REFERENCES `mydb`.`Fornecedor` (`id_fornecedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Dependente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Dependente` (
  `id_dependente` INT UNSIGNED NOT NULL,
  `nome_dependete` VARCHAR(45) NOT NULL,
  `cpf_dependente` VARCHAR(45) NOT NULL,
  `data_de_nascimento_dependente` DATE NOT NULL,
  `Funcionario_id_funcionario` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_dependente`),
  INDEX `fk_Dependente_Funcionario1_idx` (`Funcionario_id_funcionario` ASC),
  CONSTRAINT `fk_Dependente_Funcionario1`
    FOREIGN KEY (`Funcionario_id_funcionario`)
    REFERENCES `mydb`.`Funcionario` (`id_funcionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
