delimiter //
create Function Rho(_CallPut int, _S0 double, _q double, _t double, _X double, _r double, _s double) 
returns double
begin
	set @_d1 = D1(_S0, _X, _t, _r, _q, _s);
	set @_d2 = D2(@_d1, _s, _t);
	
	if _CallPut = 0 then
		return (1/100.0)*_X*_t*Exp(-1*_r*_t)*CND(@_d2);
	else
		return (-1/100.0)*_X*_t*Exp(-1*_r*_t)*CND(-1*@_d2);
	end if;
end //
delimiter ;