select sum(venValorTotal) 
from venda 
where venData = '2018-11-17';

select forNomeFantasia,proNome,proLote 
from compra 
    inner join fornecedor on com_forCodigo = forCodigo
    inner join item_compra on itc_comCodigo = comCodigo
    inner join produto on itc_proCodigo = proCodigo
where proNome = "Leite de Boi";

select funNome,proNome,proLote 
from compra
    inner join funcionario on com_funCodigo = funCodigo
    inner join item_compra on itc_comCodigo = comCodigo
    inner join produto on itc_proCodigo = proCodigo
where proNome = "Leite de Boi";

select cliNome,venData,venHora,venValorTotal 
from venda
    inner join cliente on ven_cliCodigo = cliCodigo
where venHora < '13:00' and venData = '2018-11-17';

select proNome, proLote, sum(itvQuantidade)
from item_venda
    inner join produto on proCodigo = itv_proCodigo
group by (proCodigo)
order by sum(itvQuantidade) desc;

select cliNome, cliCPF, sum(venValorTotal)
from venda
    inner join conta_receber on ctr_venCodigo = venCodigo
    inner join cliente on cliCodigo = ven_cliCodigo
where cliCPF = "44444444444"
group by (cliCodigo);

select cliNome, cliCPF, sum(venValorTotal)
from venda
    inner join conta_receber on ctr_venCodigo = venCodigo
    inner join recebimento on rec_ctrCodigo = ctrCodigo
    inner join cliente on cliCodigo = ven_cliCodigo
where recStatus = true
group by (cliCodigo);

select funNome, sum(venValorTotal)
from venda
    inner join funcionario on funCodigo = ven_funCodigo
group by (funCodigo)
order by sum(venValorTotal) desc;

select forNomeFantasia, forCNPJ, sum(comValor)
from compra
    inner join conta_pagar on ctr_comCodigo = comCodigo
    inner join pagamento on pag_ctpCodigo = ctpCodigo
    inner join fornecedor on forCodigo = com_forCodigo
where pagStatus = false
group by (forCodigo);

select funNome, funCPF, funEstado, funCidade, funBairro, funRua, funNumero, funSalario
from funcionario
where funSalario < 1000;