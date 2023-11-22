delimiter //
create procedure sps_dissidio (in aumento decimal)
begin
create temporary table tmp_dissidio
select *, (salario * aumento) as aumento from empregado;

select * from tmp_dissidio;

drop table tmp_dissidio;
end
//

delimiter $$ 
create procedure spu_dissidio_aplicar (in taxa decimal)
begin
update empregado set salario = (salario + (salario * taxa)) where cod_emp >0;
end
$$


-- call spu_dissidio_aplicar(1.15);

select * from empregado;
