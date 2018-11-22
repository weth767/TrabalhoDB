select sum(venValorTotal) from venda 
where venData = '2018-11-17';

select forNomeFantasia,proNome,proLote 
from compra 
inner join fornecedor on com_forCodigo = forCodigo
inner join compra_itemCompra on cic_comCodigo = comCodigo
inner join item_compra on cic_itcCodigo = itcCodigo
inner join produto on itc_proCodigo = proCodigo
where proNome = "Leite de Boi";

select funNome,proNome,proLote 
from compra
inner join funcionario on com_funCodigo = funCodigo
inner join compra_itemCompra on cic_comCodigo = comCodigo
inner join item_compra on cic_itcCodigo = itcCodigo
inner join produto on itc_proCodigo = proCodigo
where proNome = "Leite de Boi";

select cliNome,venData,venHora,venValorTotal from venda
inner join cliente on ven_cliCodigo = cliCodigo
where venHora < '13:00' and venData = '2018-11-17';







