use supermercado;
update cliente
set cliNome = "Jefffffff Bigoode"
where cliCodigo = 4;
update produto
set proLote = "a@321wdscX"
where proCodigo = 3;
update fornecedor
set forRua = "Teodoro Florencio"
where forCodigo = 5;
update funcionario
set funBairro = "Pindagoiabeiras"
where funCodigo = 8;
update caixa
set caiHoraAbertura = '07:12'
where caiCodigo = 2;
update compra
set comValor = 512.58
where comCodigo = 6;
update pagamento
set pagStatus = false
where pagCodigo = 3;

