delimiter //
create Function Theta(_CallPut int, _S0 double, _q double, _t double, _X double, _r double, _s double) 
returns double
begin
	set @_d1 = D1(_S0, _X, _t, _r, _q, _s);
	set @_d2 = D2(@_d1, _s, _t);
	set @_temp1 = ((_S0*_s*Exp(-1*_q*_t))/(2*Sqrt(_t)))*(1/sqrt(2*PI()))*Exp(-1*(@_d1*@_d1)/ 2);
	
	
	if _CallPut = 0 then
		return (1/365.0)*(-1*@_temp1 - _r*_X*Exp(-1*_r*_t)*CND(@_d2) + _q*_S0*Exp(-1*_q*_t)*CND(@_d1));
	else
		return (1/365.0)*(-1*@_temp1 + _r*_X*Exp(-1*_r*_t)*CND(-1*@_d2) - _q*_S0*Exp(-1*_q*_t)*CND(-1*@_d1));
	end if;
end //
delimiter ;