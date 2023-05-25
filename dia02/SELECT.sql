-- Databricks notebook source
SELECT 'olá mundo', 
        24 * 2

-- COMMAND ----------

select * 
from silver.pizza_query.item_pedido

-- COMMAND ----------

select vlPreco,
      descItem,
      21 = 21 as vl42 -- com o comando selec não estamos alterando nenhuma informação da tabela só esta mostrando na memória o que estamos executando
from silver.pizza_query.produto

-- COMMAND ----------


