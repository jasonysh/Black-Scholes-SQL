delimiter //
create Function Vega(_S0 double, _q double, _t double, _X double, _r double, _s double) 
returns double
begin
	set @_d1 = D1(_S0, _X, _t, _r, _q, _s);
	set @_dd1 = (1/sqrt(2*PI())) * Exp(-1 * @_d1 * @_d1 / 2);
	return (1/100.0) * _S0 * Exp(-1*_q*_t) * Sqrt(_t) * @_dd1;
end //
delimiter ;