create or replace function cantidad_venta (IN nombre_usuario varchar, OUT total_venta varchar)

as $$
begin
	select count(ventas.id_venta) into total_venta
	from ventas
	inner join usuario on usuario.id_usuario = ventas.id_usuario
	where usuario.usuario = nombre_usuario;
end
$$
language plpgsql;
