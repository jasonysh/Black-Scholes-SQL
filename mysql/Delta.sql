create Function Delta(_CallPut int, _S0 double, _q double, _t double, _X double, _r double, _s double) 
returns double
begin
	set @_d1 = D1(_S0, _X, _t, _r, _q, _s);
	if _CallPut = 0 then
		return Exp(-1*_q*_t) * CND(@_d1);
	else
		return Exp(-1*_q*_t) * (CND(@_d1)-1);
	end if;
end //
delimiter ;