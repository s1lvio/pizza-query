-- Databricks notebook source
select count(*), -- conta linhas nao nulas 
        count(1), -- mesmo comando
        count(idPedido) -- linhas nao nulas da coluna idPedido
from silver.pizza_query.pedido

-- COMMAND ----------

select count(*) 
from silver.pizza_query.pedido
where flKetchup is not null

-- COMMAND ----------

select descUF,
        count(*) as qtdePedidos
from silver.pizza_query.pedido
where descUF != 'São Paulo'
group by descUF -- separar alguma coisa por criterio
having qtdePedidos >= 75
order by qtdePedidos desc
limit 5 -- o limit deve ser o ultimo da querry

-- COMMAND ----------

select count(*) 
from silver.pizza_query.pedido
where descUF = 'Pernambuco'

-- COMMAND ----------

select * 
from silver.pizza_query.produto
where descItem like 'suco%' -- o like usa muito recurso deve nao deve ser usado em grande bancos de dados

-- COMMAND ----------

select descUF, 
        flKetchup,
        count(*)
from silver.pizza_query.pedido
group by descUF, flKetchup
order by descUF, flKetchup
