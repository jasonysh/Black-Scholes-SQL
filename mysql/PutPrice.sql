delimiter //
create Function PutPrice (_S0 double, _q double, _t double, _X double, _r double, _s double) 
returns double
begin
	set @_t = _t;
	if _t < 0 then
		set @_t = 0;
	end if;
	set @_d1 = D1(_S0, _X, @_t, _r, _q, _s);
	set @_d2 = D2(@_d1, _s, @_t);
    return _X * Exp(-1*_r*@_t) * CND(-1*@_d2) - _S0 * Exp(-1*_q*@_t) * CND(-1*@_d1);
end //
delimiter ;