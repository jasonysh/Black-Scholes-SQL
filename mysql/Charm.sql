

DELIMITER //
CREATE FUNCTION Charm(_CallPut int, _S0 double, _q double, _t double, _X double, _r double, _s double) 
RETURNS double
BEGIN
	set @_d1 = D1(_S0, _X, _t, _r, _q, _s);
	set @_dd1 = (1/sqrt(2*PI())) * Exp(-1 * @_d1 * @_d1 / 2);
	set @_d2 = D2(@_d1, _s, _t);
	
	if _CallPut = 0 then
		RETURN (1/365.0)*(_q*Exp(-1*_q*_t)*CND(@_d1) + Exp(-1*_q*_t)*@_dd1 * (@_d2/(2*_t) - (_r-_q)/(_s*Sqrt(_t))));
	else
		RETURN (1/365.0)*(_q*Exp(-1*_q*_t)*(CND(@_d1)-1) + Exp(-1*_q*_t)*@_dd1 * (@_d2/(2*_t) - (_r-_q)/(_s*Sqrt(_t))));
	END if;
END //
DELIMITER ;