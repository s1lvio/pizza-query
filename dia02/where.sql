-- Databricks notebook source
select * 
from silver.pizza_query.pedido
where flKetchup = true
and descUF = 'Pernambuco'
