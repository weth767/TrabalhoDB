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
  `forCodigo` INT NOT NULL AUTO_INCREMENT COMMENT 'Codigo do fornecedor, campo para identificar cada fornecedor',
  `forNomeFantasia` VARCHAR(100) NOT NULL COMMENT 'Nome Fantasia, campo para armazenar o nome fantasia do fornecedor',
  `forRazaoSocial` VARCHAR(100) NOT NULL COMMENT 'Razao Social, campo para armazenar a RS do fornecedor',
  `forInscricaoEstadual` VARCHAR(15) NOT NULL COMMENT 'Inscricao Estadual, campo para armazenar a IE do fornecedor',
  `forCNPJ` VARCHAR(45) NOT NULL COMMENT 'CNPJ, campo para armazenar o cnpj do fornecedor',
  `forTelefone` VARCHAR(15) NOT NULL COMMENT 'Telefone, campo para armazenar o telefone do fornecedor',
  `forCelular` VARCHAR(11) NULL COMMENT 'Celular, campo para armazenar o celular, caso o fornecedor o tenha',
  `forEstado` VARCHAR(30) NOT NULL COMMENT 'Estado, campo que armazena o Estado da filial que atende o supermercado',
  `forCidade` VARCHAR(50) NOT NULL COMMENT 'Cidade, campo que armazena a cidade onde filial que atende o supermercado fica',
  `forBairro` VARCHAR(45) NOT NULL COMMENT 'Bairro, campo que armazena o bairro onde a filial que atende o supermercado fica',
  `forRua` VARCHAR(100) NOT NULL COMMENT 'Rua, campo que armazena a rua onde a filial que atende o supermercado fica',
  `forNumero` INT NOT NULL COMMENT 'Numero, campo que armazena o número do local onde a filial que atende o supermercado fica',
  PRIMARY KEY (`forCodigo`))
ENGINE = InnoDB
COMMENT = 'Tabela para armazenar os dados dos fornecedores';


-- -----------------------------------------------------
-- Table `supermercado`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`produto` (
  `proCodigo` INT NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identificar o produto',
  `proValorCusto` FLOAT NOT NULL COMMENT 'ValorCusto, campo para armazenar o valor do produto',
  `proQuantidadeEstoque` INT NOT NULL COMMENT 'QuantidadeEstoque, campo para armazenar a quantidade de produtos em estoque',
  `proNome` TEXT NOT NULL COMMENT 'Nome, campo para armazenar o nome do produto',
  `proMarca` VARCHAR(50) NOT NULL COMMENT 'Marca, campo para armazenar a marca do produto',
  `proValidade` DATE NOT NULL COMMENT 'Validade, armazena a data de vencimento do produto',
  `proLote` VARCHAR(20) NOT NULL COMMENT 'Lote, campo para armazenar o lote do produto',
  `proUnidade` VARCHAR(2) NOT NULL COMMENT 'Unidade, campo para armazenar a unidade do produto',
  PRIMARY KEY (`proCodigo`))
ENGINE = InnoDB
COMMENT = 'Tabela para armazenar os produtos do supermercado';


-- -----------------------------------------------------
-- Table `supermercado`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`cliente` (
  `cliCodigo` INT NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identificar o cliente',
  `cliNome` TEXT NOT NULL COMMENT 'Nome, campo para armazenar o nome do cliente',
  `cliCPF` VARCHAR(11) NOT NULL COMMENT 'CPF, campo para armazenar o cpf do cliente',
  `cliRG` VARCHAR(15) NOT NULL COMMENT 'RG, campo para armazenar o rg do cliente',
  `cliTelefone` VARCHAR(15) NULL COMMENT 'Telefone, campo para armazenar o telefone do cliente, se houver',
  `cliCelular` VARCHAR(11) NOT NULL COMMENT 'Celular, campo para armazenar o celular do cliente',
  `cliEstado` VARCHAR(30) NOT NULL COMMENT 'Estado, campo para armazenar o estado da residencia do cliente',
  `cliCidade` VARCHAR(80) NOT NULL COMMENT 'Cidade, campo para armazenar a cidade da residencia do cliente',
  `cliBairro` VARCHAR(45) NOT NULL COMMENT 'Bairro, campo para armazenar o bairro da residencia do cliente',
  `cliRua` VARCHAR(100) NOT NULL COMMENT 'Rua, campo para armazenar a rua da residencia do cliente',
  `cliNumero` INT NOT NULL COMMENT 'Numero, campo para armazenar o numero onde localiza-se a residencia do cliente',
  PRIMARY KEY (`cliCodigo`))
ENGINE = InnoDB
COMMENT = 'Tabela para armazenar os clientes do supermercado';


-- -----------------------------------------------------
-- Table `supermercado`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`funcionario` (
  `funCodigo` INT NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identificar o funcionario',
  `funNome` VARCHAR(45) NOT NULL COMMENT 'Nome, campo para armazenar o nome do funcionario',
  `funSalario` FLOAT NOT NULL COMMENT 'Salario, campo para armazenar o salario do funcionario',
  `funCPF` VARCHAR(11) NOT NULL COMMENT 'CPF, campo para armazenar o cpf do funcionario',
  `funRG` VARCHAR(15) NOT NULL COMMENT 'RG, campo para armazenar o rg do funcionario',
  `funTelefone` VARCHAR(15) NULL COMMENT 'Telefone, campo para armazenar o telefone do funcionario se houver',
  `funCelular` VARCHAR(11) NOT NULL COMMENT 'Celular, campo para armazenar o celular do funcionario',
  `funEstado` VARCHAR(30) NOT NULL COMMENT 'Estado, campo para armazenar o estado da residencia do funcionario',
  `funCidade` VARCHAR(80) NOT NULL COMMENT 'Cidade, campo para armazenar a cidade da residencia do funcionario',
  `funBairro` VARCHAR(45) NOT NULL COMMENT 'Bairro, campo para armazenar o bairro da residencia do funcionario',
  `funRua` VARCHAR(100) NOT NULL COMMENT 'Rua, campo para armazenar a rua da residencia do funcionario',
  `funNumero` INT NOT NULL COMMENT 'Numero, campo para armazenar o numero da residencia do funcionario',
  PRIMARY KEY (`funCodigo`))
ENGINE = InnoDB
COMMENT = 'Tabela para armazenar os dados dos funcionarios do supermercado';


-- -----------------------------------------------------
-- Table `supermercado`.`caixa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`caixa` (
  `caiCodigo` INT NOT NULL COMMENT 'Codigo, campo para identificar o caixa do supermercado(Caixa que armazena dinheiro, não funcionario)',
  `caiHoraAbertura` TIME NOT NULL COMMENT 'HoraAbertura, campo para armazenar a hora abertura do caixa',
  `caiHoraFechamento` TIME NULL COMMENT 'HoraFechamento, campo para armazenar a hora de fechamento do caixa',
  `caiData` DATE NOT NULL COMMENT 'Data, campo para armazenar a data atual do caixa',
  `caiValorAbertura` FLOAT NOT NULL COMMENT 'ValorAbertura, campo para armazenar o valor de abertura do caixa',
  `caiValorFechamento` FLOAT NULL COMMENT 'ValorFechamento, campo para armazenar o valor de fechamento do caixa',
  `caiStatus` TINYINT(1) NULL COMMENT 'Status, campo para armazenar o status do caixa',
  PRIMARY KEY (`caiCodigo`))
ENGINE = InnoDB
COMMENT = 'Tabela para guardar os dados do caixa do supermercado';


-- -----------------------------------------------------
-- Table `supermercado`.`venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`venda` (
  `venCodigo` INT NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identificar a venda',
  `venValorTotal` FLOAT NOT NULL COMMENT 'ValorTotal, campo para armazenar o valor total da venda',
  `venData` DATE NOT NULL COMMENT 'Data, campo para armazenar a data da venda',
  `venHora` TIME NOT NULL COMMENT 'Hora, campo para armazenar a hora da venda',
  `ven_cliCodigo` INT NOT NULL COMMENT 'Codigo do cliente, FK do cliente, para armazenar os dados do cliente presente na venda',
  `ven_funCodigo` INT NOT NULL COMMENT 'Codigo do funcionario, FK do funcionario, para armazenar os dados do funcionario presente na venda',
  `caixa_caiCodigo` INT NOT NULL COMMENT 'Codigo do caixa, FK do caixa, para armazenar a situação do caixa no momento da venda',
  PRIMARY KEY (`venCodigo`),
  INDEX `fk_Vendas_Clientes1_idx` (`ven_cliCodigo` ASC) ,
  INDEX `fk_Vendas_Funcionarios1_idx` (`ven_funCodigo` ASC) ,
  INDEX `fk_venda_caixa1_idx` (`caixa_caiCodigo` ASC) ,
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
ENGINE = InnoDB
COMMENT = 'Tabela para armazenar as vendas do supermercado';


-- -----------------------------------------------------
-- Table `supermercado`.`conta_receber`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`conta_receber` (
  `ctrCodigo` INT NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identificar a conta a receber',
  `ctrData` DATE NOT NULL COMMENT 'Data, campo para armazenar a data que a conta a receber foi gerada',
  `ctrFormaRecebimento` VARCHAR(20) NOT NULL COMMENT 'FormaRecebimento, campo para armazenar a forma de recebimento da conta a receber',
  `ctrQuantidadeParcelas` INT NOT NULL COMMENT 'QuantidadeParcelas, campo para armazenar a quantidade de parcelas da conta a receber',
  `ctrValorParcelas` FLOAT NOT NULL COMMENT 'ValorParcelas, campo para armazenar o valor das parcelas da conta a receber',
  `ctrDiaVencimentos` INT NOT NULL DEFAULT 10 COMMENT 'DiaVencimentos, campo para armazenar o dia de vencimento(igual para todos os meses) da conta a receber',
  `ctr_venCodigo` INT NOT NULL COMMENT 'Codigo da venda, FK da venda, para passar os dados da venda',
  PRIMARY KEY (`ctrCodigo`),
  INDEX `fk_contaReceber_vendas1_idx` (`ctr_venCodigo` ASC) ,
  CONSTRAINT `fk_contaReceber_vendas1`
    FOREIGN KEY (`ctr_venCodigo`)
    REFERENCES `supermercado`.`venda` (`venCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'Tabela para armazenar as contas a receber do supermercado';


-- -----------------------------------------------------
-- Table `supermercado`.`recebimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`recebimento` (
  `recCodigo` INT NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identificar o recebimento',
  `recData` DATE NOT NULL COMMENT 'Data, campo para armazenar a data do recebimento',
  `recHora` TIME NOT NULL COMMENT 'Hora, campo para armazenar a hora do recebimento',
  `recValorRecebido` FLOAT NOT NULL COMMENT 'ValorRecebido, campo para armazenar o valor recebido no recebimento',
  `recStatus` TINYINT(1) NOT NULL COMMENT 'Status, campo para armazenar se o recebimento foi realizado ou não',
  `rec_ctrCodigo` INT NOT NULL COMMENT 'Codigo da conta a receber, FK da conta a receber, para passar os dados da conta a receber ao recebimento',
  PRIMARY KEY (`recCodigo`),
  INDEX `fk_recebimento_contaReceber1_idx` (`rec_ctrCodigo` ASC) ,
  CONSTRAINT `fk_recebimento_contaReceber1`
    FOREIGN KEY (`rec_ctrCodigo`)
    REFERENCES `supermercado`.`conta_receber` (`ctrCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'Tabela para armazenar os recebimentos do supermercado';


-- -----------------------------------------------------
-- Table `supermercado`.`item_venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`item_venda` (
  `itvCodigo` INT NOT NULL COMMENT 'Codigo, campo para identificar o item de venda',
  `itvQuantidade` FLOAT NOT NULL COMMENT 'Quantidade, campo para armazenar a quantidade do item de venda do produto',
  `itvDesconto` FLOAT NOT NULL DEFAULT 0 COMMENT 'Desconto, campo para armazenar o desconto do item de venda do produto',
  `itvValorTotal` FLOAT NOT NULL COMMENT 'ValorTotal, campo para armazenar o valor total do item de venda do produto',
  `itv_proCodigo` INT NOT NULL COMMENT 'Codigo do produto, FK do produto, para passar os dados do produto',
  PRIMARY KEY (`itvCodigo`),
  INDEX `fk_Item Venda_Produtos1_idx` (`itv_proCodigo` ASC) ,
  CONSTRAINT `fk_Item Venda_Produtos1`
    FOREIGN KEY (`itv_proCodigo`)
    REFERENCES `supermercado`.`produto` (`proCodigo`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
COMMENT = 'Tabela para armazenar os itens de venda dos produtos do supermecado';


-- -----------------------------------------------------
-- Table `supermercado`.`compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`compra` (
  `comCodigo` INT NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identifcar as comprar do supermercado',
  `comData` DATE NOT NULL COMMENT 'Data, campo para armazenar a data das compras do supermercado',
  `comHora` TIME NOT NULL COMMENT 'Hora, campo para armazenar a horas da compras do supermercado',
  `comValor` FLOAT NOT NULL COMMENT 'Valor, campo para armazenar o valor da compras do supermercado',
  `com_funCodigo` INT NOT NULL COMMENT 'Codigo do funcionario, FK do funcionario, para armazenar o funcionario que fez a compra',
  `com_forCodigo` INT NOT NULL COMMENT 'Codigo do fornecedor, FK do Fornecedor, campo para armazenar o fornecedor de quem a compra foi feita',
  PRIMARY KEY (`comCodigo`),
  INDEX `fk_Compra_Funcionarios1_idx` (`com_funCodigo` ASC) ,
  INDEX `fk_Compra_Fornecedor1_idx` (`com_forCodigo` ASC) ,
  CONSTRAINT `fk_Compra_Funcionarios1`
    FOREIGN KEY (`com_funCodigo`)
    REFERENCES `supermercado`.`funcionario` (`funCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Compra_Fornecedor1`
    FOREIGN KEY (`com_forCodigo`)
    REFERENCES `supermercado`.`fornecedor` (`forCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'Tabela para armazenar as compras do supermercado';


-- -----------------------------------------------------
-- Table `supermercado`.`item_compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`item_compra` (
  `itcCodigo` INT NOT NULL COMMENT 'Codigo, campo para identificar o item de compra',
  `itc_proCodigo` INT NOT NULL COMMENT 'Codigo do produto, FK do produto, para armazenar os dados do produto do item de compra',
  `itcQuantidade` INT NOT NULL COMMENT 'Quantidade, campo para armazenar a quantidade de produtos(mesmo produto) do item de compra',
  `itcValorTotal` FLOAT NOT NULL COMMENT 'ValorTotal, campo para armazenar ',
  INDEX `fk_Compra_has_Produtos_Produtos1_idx` (`itc_proCodigo` ASC) ,
  PRIMARY KEY (`itcCodigo`),
  CONSTRAINT `fk_Compra_has_Produtos_Produtos1`
    FOREIGN KEY (`itc_proCodigo`)
    REFERENCES `supermercado`.`produto` (`proCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'Tabela para armazenar os itens de compra dos produtos do supermercado';


-- -----------------------------------------------------
-- Table `supermercado`.`conta_pagar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`conta_pagar` (
  `ctpCodigo` INT NOT NULL COMMENT 'Codigo, campo para identificar a conta a pagar',
  `ctrData` DATE NOT NULL COMMENT 'Data, campo para armazenar a data da conta a pagar',
  `ctrFormaPagamento` VARCHAR(20) NOT NULL COMMENT 'FormaPagamento, campo para armazenar a forma de pagamento da conta a pagar',
  `ctrQuantidadeParcelas` INT NOT NULL COMMENT 'QuantidadeParcelas, campo para armazenar a quantidade de parcelas gerada na conta a pagar',
  `ctrValorParcelas` FLOAT NOT NULL COMMENT 'ValorParcelas, campo para armazenar o valor das parcelas da conta pagar gerada',
  `ctrDiaVencimentos` INT NOT NULL COMMENT 'DiaVencimentos, campo para armazenar os dias de vencimento(igual em todos os meses) da conta a pagar',
  `ctr_comCodigo` INT NOT NULL COMMENT 'Codigo da compra, FK da compra, para armazenar os dados da compra',
  PRIMARY KEY (`ctpCodigo`),
  INDEX `fk_contasPagar_compra1_idx` (`ctr_comCodigo` ASC) ,
  CONSTRAINT `fk_contasPagar_compra1`
    FOREIGN KEY (`ctr_comCodigo`)
    REFERENCES `supermercado`.`compra` (`comCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'Tabela para armazernar as contas a pagar do supermercado';


-- -----------------------------------------------------
-- Table `supermercado`.`pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`pagamento` (
  `pagCodigo` INT NOT NULL COMMENT 'Codigo, campo para identificar os pagamentos do supermercado',
  `pagData` DATE NOT NULL COMMENT 'Data, campo para armazenar a data dos pagamentos do supermercado',
  `pagHora` TIME NOT NULL COMMENT 'Hora, campo para armazenar os pagamentos do supermercado',
  `pagValorPago` FLOAT NOT NULL COMMENT 'ValorPago, campo para armazenar o valor que foi pago pelo supermercado',
  `pagStatus` TINYINT(1) NOT NULL DEFAULT 0 COMMENT 'Status, campo para armazenar se o supermercado realizou o pagamento',
  `pag_ctpCodigo` INT NOT NULL COMMENT 'Codigo da conta a pagar, FK da conta a pagar, passa as informações da conta a pagar para o pagamento',
  PRIMARY KEY (`pagCodigo`),
  INDEX `fk_pagamento_contasPagar1_idx` (`pag_ctpCodigo` ASC) ,
  CONSTRAINT `fk_pagamento_contasPagar1`
    FOREIGN KEY (`pag_ctpCodigo`)
    REFERENCES `supermercado`.`conta_pagar` (`ctpCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'Tabela para armazenar os pagamentos realizados pelo supermercado';


-- -----------------------------------------------------
-- Table `supermercado`.`compra_itemCompra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`compra_itemCompra` (
  `cic_comCodigo` INT NOT NULL COMMENT 'Codigo da compra, FK da compra, para armazenar a compra em conjunto com os itens de compra e permitir mais de um item de compra por compra',
  `cic_itcCodigo` INT NOT NULL COMMENT 'Codigo do item de compra, FK do item de compra, para armazenar os itens de compra com a compra e permitir mais de um item de compra por compra',
  INDEX `fk_compra_has_item_compra_item_compra1_idx` (`cic_itcCodigo` ASC) ,
  INDEX `fk_compra_has_item_compra_compra1_idx` (`cic_comCodigo` ASC) ,
  CONSTRAINT `fk_compra_has_item_compra_compra1`
    FOREIGN KEY (`cic_comCodigo`)
    REFERENCES `supermercado`.`compra` (`comCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_compra_has_item_compra_item_compra1`
    FOREIGN KEY (`cic_itcCodigo`)
    REFERENCES `supermercado`.`item_compra` (`itcCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'Tabela para unir o item de compra com a compra e permitir mais de um item de compra por compra';


-- -----------------------------------------------------
-- Table `supermercado`.`venda_itemVenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermercado`.`venda_itemVenda` (
  `viv_venCodigo` INT NOT NULL COMMENT 'Codigo da venda, FK da venda, para armazenar dados da venda e permitir mais de um item de venda por venda',
  `viv_itvCodigo` INT NOT NULL COMMENT 'Codigo do item de venda, FK do item de venda, para armazenar os dados do item de venda e permitir mais de um item de venda por venda',
  INDEX `fk_venda_has_item_venda_item_venda1_idx` (`viv_itvCodigo` ASC) ,
  INDEX `fk_venda_has_item_venda_venda1_idx` (`viv_venCodigo` ASC) ,
  CONSTRAINT `fk_venda_has_item_venda_venda1`
    FOREIGN KEY (`viv_venCodigo`)
    REFERENCES `supermercado`.`venda` (`venCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_venda_has_item_venda_item_venda1`
    FOREIGN KEY (`viv_itvCodigo`)
    REFERENCES `supermercado`.`item_venda` (`itvCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'Tabela para armazenar a venda em conjunto com o item de venda para possibilitar a existencia de mais de um item de venda por venda';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
