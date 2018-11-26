use supermercado;
#Consulta responsavel por retornar o valor total vendido na data de 17/11/2018
select sum(venValorTotal) 
from venda 
where venData = '2018-11-17';

#Consulta responsavel por retornar o nome do fornecedor que forneceu o produto Leite de Boi, bem como o nome do produtp e o lote do mesmo
select forNomeFantasia,proNome,proLote 
from compra 
    inner join fornecedor on com_forCodigo = forCodigo
    inner join item_compra on itc_comCodigo = comCodigo
    inner join produto on itc_proCodigo = proCodigo
where proNome = "Leite de Boi";

#Consulta responsavel por retornar o nome do funcionario que realizou a compra do produto Leite de Boi, bem como o nome do produto e lote do mesmo
select funNome,proNome,proLote 
from compra
    inner join funcionario on com_funCodigo = funCodigo
    inner join item_compra on itc_comCodigo = comCodigo
    inner join produto on itc_proCodigo = proCodigo
where proNome = "Leite de Boi";

#Consulta responsavel por retornar o nome dos cliente que compraram produtos na data de 17/11/2018 antes das 13 horas, bem como retornar a data e a hora e o valor total da compra realizada pelo cliente
select cliNome,venData,venHora,venValorTotal 
from venda
    inner join cliente on ven_cliCodigo = cliCodigo
where venHora < '13:00' and venData = '2018-11-17';

#Consulta responsavel por retornar os produto mais vendidos ordenados por ordem decrescente, bem como o lote dos produtos e a soma dos mesmos
select proNome, proLote, sum(itvQuantidade)
from item_venda
    inner join produto on proCodigo = itv_proCodigo
group by (proCodigo)
order by sum(itvQuantidade) desc;

#Consulta responsavelpor retornar o cliente cujo o CPF é 44444444444 e possui uma conta a ser recebida pelo supermecado, bem como o seu nome CPF e o valor total das compras
select cliNome, cliCPF, sum(venValorTotal)
from venda
    inner join conta_receber on ctr_venCodigo = venCodigo
    inner join cliente on cliCodigo = ven_cliCodigo
where cliCPF = "44444444444"
group by (cliCodigo);

#Consulta responsavelpor retornar os clientes que possuem contas pagas no supermercado, bemm como os CPF e o valor total das compras
select cliNome, cliCPF, sum(venValorTotal)
from venda
    inner join conta_receber on ctr_venCodigo = venCodigo
    inner join recebimento on rec_ctrCodigo = ctrCodigo
    inner join cliente on cliCodigo = ven_cliCodigo
where recStatus = true
group by (cliCodigo);

#Consulta responsavel por retornar os nomes dos funcionarios que fizeram vendas ordenadas decrescente, bem como o valor das vendas realizadas
select funNome, sum(venValorTotal)
from venda
    inner join funcionario on funCodigo = ven_funCodigo
group by (funCodigo)
order by sum(venValorTotal) desc;

#Consulta responsavel por retornar os nomes e CNPJs dos fornecedores cujo o supermecado possui dividas, bem como o valor da divida
select forNomeFantasia, forCNPJ, sum(comValor)
from compra
    inner join conta_pagar on ctr_comCodigo = comCodigo
    inner join pagamento on pag_ctpCodigo = ctpCodigo
    inner join fornecedor on forCodigo = com_forCodigo
where pagStatus = false
group by (forCodigo);

#Consulta responsavel por retornar os dados dos funcionarios que possuem salario menor que 1000 reais
select funNome, funCPF, funEstado, funCidade, funBairro, funRua, funNumero, funSalario
from funcionario
where funSalario < 1000;