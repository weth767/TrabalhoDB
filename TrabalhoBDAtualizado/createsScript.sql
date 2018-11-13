-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema supermercado
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema supermercado
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `supermercado` ;
USE `supermercado` ;

-- -----------------------------------------------------
-- Table `supermercado`.`fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`fornecedor` (
  `forCodigo` INT NOT NULL AUTO_INCREMENT,
  `forInscricaoEstadual` VARCHAR(15) NOT NULL,
  `forNomeFantasia` VARCHAR(100) NOT NULL,
  `forRazaoSocial` VARCHAR(100) NOT NULL,
  `forCNPJ` VARCHAR(45) NOT NULL,
  `forTelefone` VARCHAR(15) NOT NULL,
  `forEstado` VARCHAR(30) NOT NULL,
  `forCidade` VARCHAR(80) NOT NULL,
  `forBairro` VARCHAR(45) NOT NULL,
  `forRua` VARCHAR(100) NOT NULL,
  `forNumero` INT NOT NULL,
  PRIMARY KEY (`forCodigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `supermercado`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`produto` (
  `proCodigo` INT NOT NULL AUTO_INCREMENT,
  `proValorCusto` FLOAT NOT NULL,
  `proQuantidadeEstoque` FLOAT NOT NULL,
  `proNome` TEXT NOT NULL,
  `proMarca` VARCHAR(50) NOT NULL,
  `proValidade` DATE NOT NULL,
  `proLote` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`proCodigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `supermercado`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`cliente` (
  `cliCodigo` INT NOT NULL AUTO_INCREMENT,
  `cliNome` TEXT NOT NULL,
  `cliCPF` VARCHAR(11) NOT NULL,
  `cliRG` VARCHAR(15) NOT NULL,
  `cliTelefone` VARCHAR(15) NOT NULL,
  `cliEstado` VARCHAR(30) NOT NULL,
  `cliCidade` VARCHAR(80) NOT NULL,
  `cliBairro` VARCHAR(45) NOT NULL,
  `cliRua` VARCHAR(100) NOT NULL,
  `cliNumero` INT NOT NULL,
  PRIMARY KEY (`cliCodigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `supermercado`.`item_venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`item_venda` (
  `itvCodigo` INT NOT NULL,
  `itvQuantidade` FLOAT NOT NULL,
  `itvDesconto` FLOAT NOT NULL,
  `itvValorTotal` FLOAT NOT NULL,
  `itv_proCodigo` INT NOT NULL,
  PRIMARY KEY (`itvCodigo`),
  INDEX `fk_Item Venda_Produtos1_idx` (`itv_proCodigo` ASC) ,
  CONSTRAINT `fk_Item Venda_Produtos1`
    FOREIGN KEY (`itv_proCodigo`)
    REFERENCES `supermercado`.`produto` (`proCodigo`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `supermercado`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`funcionario` (
  `funCodigo` INT NOT NULL AUTO_INCREMENT,
  `funNome` VARCHAR(45) NOT NULL,
  `funSalario` FLOAT NOT NULL,
  `funCPF` VARCHAR(11) NOT NULL,
  `funRG` VARCHAR(15) NOT NULL,
  `funTelefone` VARCHAR(15) NOT NULL,
  `funEstado` VARCHAR(30) NOT NULL,
  `funCidade` VARCHAR(80) NOT NULL,
  `funBairro` VARCHAR(45) NOT NULL,
  `funRua` VARCHAR(100) NOT NULL,
  `funNumero` INT NOT NULL,
  PRIMARY KEY (`funCodigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `supermercado`.`caixa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`caixa` (
  `caiCodigo` INT NOT NULL,
  `caiHoraAbertura` TIME NOT NULL,
  `caiHoraFechamento` TIME NULL,
  `caiData` DATE NOT NULL,
  `caiValorAbertura` FLOAT NOT NULL,
  `caiValorFechamento` FLOAT NULL,
  `caiStatus` TINYINT(1) NULL,
  PRIMARY KEY (`caiCodigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `supermercado`.`venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`venda` (
  `venCodigo` INT NOT NULL AUTO_INCREMENT,
  `venImposto` FLOAT NOT NULL,
  `venValorTotal` FLOAT NOT NULL,
  `venData` DATE NOT NULL,
  `venHora` TIME NOT NULL,
  `ven_iteCodigo` INT NOT NULL,
  `ven_cliCodigo` INT NOT NULL,
  `ven_funCodigo` INT NOT NULL,
  `caixa_caiCodigo` INT NOT NULL,
  PRIMARY KEY (`venCodigo`),
  INDEX `fk_Vendas_Item Venda1_idx` (`ven_iteCodigo` ASC) ,
  INDEX `fk_Vendas_Clientes1_idx` (`ven_cliCodigo` ASC) ,
  INDEX `fk_Vendas_Funcionarios1_idx` (`ven_funCodigo` ASC) ,
  INDEX `fk_venda_caixa1_idx` (`caixa_caiCodigo` ASC) ,
  CONSTRAINT `fk_Vendas_Item Venda1`
    FOREIGN KEY (`ven_iteCodigo`)
    REFERENCES `supermercado`.`item_venda` (`itvCodigo`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Vendas_Clientes1`
    FOREIGN KEY (`ven_cliCodigo`)
    REFERENCES `supermercado`.`cliente` (`cliCodigo`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Vendas_Funcionarios1`
    FOREIGN KEY (`ven_funCodigo`)
    REFERENCES `supermercado`.`funcionario` (`funCodigo`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_venda_caixa1`
    FOREIGN KEY (`caixa_caiCodigo`)
    REFERENCES `supermercado`.`caixa` (`caiCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `supermercado`.`conta_receber`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`conta_receber` (
  `ctrCodigo` INT NOT NULL AUTO_INCREMENT,
  `ctrData` DATE NOT NULL,
  `ctrFormaPagamento` VARCHAR(20) NOT NULL,
  `ctrQuantidadeParcelas` INT NOT NULL,
  `ctrValorParcelas` FLOAT NOT NULL,
  `ctrDiaVencimentos` INT NOT NULL DEFAULT 10,
  `ctr_venCodigo` INT NOT NULL,
  PRIMARY KEY (`ctrCodigo`),
  INDEX `fk_contaReceber_vendas1_idx` (`ctr_venCodigo` ASC) ,
  CONSTRAINT `fk_contaReceber_vendas1`
    FOREIGN KEY (`ctr_venCodigo`)
    REFERENCES `supermercado`.`venda` (`venCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `supermercado`.`recebimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`recebimento` (
  `recCodigo` INT NOT NULL AUTO_INCREMENT,
  `recData` DATE NOT NULL,
  `recHora` TIME NOT NULL,
  `recValorRecebido` FLOAT NOT NULL,
  `recStatus` TINYINT(1) NOT NULL,
  `rec_ctrCodigo` INT NOT NULL,
  PRIMARY KEY (`recCodigo`),
  INDEX `fk_recebimento_contaReceber1_idx` (`rec_ctrCodigo` ASC) ,
  CONSTRAINT `fk_recebimento_contaReceber1`
    FOREIGN KEY (`rec_ctrCodigo`)
    REFERENCES `supermercado`.`conta_receber` (`ctrCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `supermercado`.`item_compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`item_compra` (
  `itcCodigo` INT NOT NULL,
  `itc_proCodigo` INT NOT NULL,
  `itc_quantidade` INT NOT NULL,
  `itc_valorTotal` FLOAT NOT NULL,
  INDEX `fk_Compra_has_Produtos_Produtos1_idx` (`itc_proCodigo` ASC) ,
  PRIMARY KEY (`itcCodigo`),
  CONSTRAINT `fk_Compra_has_Produtos_Produtos1`
    FOREIGN KEY (`itc_proCodigo`)
    REFERENCES `supermercado`.`produto` (`proCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `supermercado`.`compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`compra` (
  `comCodigo` INT NOT NULL AUTO_INCREMENT,
  `comData` DATE NOT NULL,
  `comHora` TIME NOT NULL,
  `comValor` FLOAT NOT NULL,
  `com_funCodigo` INT NOT NULL,
  `com_forCodigo` INT NOT NULL,
  `com_itcCodigo` INT NOT NULL,
  PRIMARY KEY (`comCodigo`),
  INDEX `fk_Compra_Funcionarios1_idx` (`com_funCodigo` ASC) ,
  INDEX `fk_Compra_Fornecedor1_idx` (`com_forCodigo` ASC) ,
  INDEX `fk_compra_item_compra1_idx` (`com_itcCodigo` ASC) ,
  CONSTRAINT `fk_Compra_Funcionarios1`
    FOREIGN KEY (`com_funCodigo`)
    REFERENCES `supermercado`.`funcionario` (`funCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Compra_Fornecedor1`
    FOREIGN KEY (`com_forCodigo`)
    REFERENCES `supermercado`.`fornecedor` (`forCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_compra_item_compra1`
    FOREIGN KEY (`com_itcCodigo`)
    REFERENCES `supermercado`.`item_compra` (`itcCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `supermercado`.`conta_pagar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`conta_pagar` (
  `ctpCodigo` INT NOT NULL,
  `ctrData` DATE NOT NULL,
  `ctrFormaRecebimento` VARCHAR(20) NOT NULL,
  `ctrQuantidadeParcelas` INT NOT NULL,
  `ctrValorParcelas` FLOAT NOT NULL,
  `ctrDiaVencimentos` INT NOT NULL,
  `ctr_comCodigo` INT NOT NULL,
  PRIMARY KEY (`ctpCodigo`),
  INDEX `fk_contasPagar_compra1_idx` (`ctr_comCodigo` ASC) ,
  CONSTRAINT `fk_contasPagar_compra1`
    FOREIGN KEY (`ctr_comCodigo`)
    REFERENCES `supermercado`.`compra` (`comCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `supermercado`.`pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`pagamento` (
  `pagCodigo` INT NOT NULL,
  `pagData` DATE NOT NULL,
  `pagHora` TIME NOT NULL,
  `pagValorPago` FLOAT NOT NULL,
  `pagStatus` TINYINT(1) NOT NULL,
  `pag_ctpCodigo` INT NOT NULL,
  PRIMARY KEY (`pagCodigo`),
  INDEX `fk_pagamento_contasPagar1_idx` (`pag_ctpCodigo` ASC) ,
  CONSTRAINT `fk_pagamento_contasPagar1`
    FOREIGN KEY (`pag_ctpCodigo`)
    REFERENCES `supermercado`.`conta_pagar` (`ctpCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

