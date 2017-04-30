DELIMITER //
CREATE FUNCTION Volga(_S0 double, _q double, _t double, _X double, _r double, _s double) 
RETURNS double
BEGIN
	set @_d1 = D1(_S0, _X, _t, _r, _q, _s);
	set @_dd1 = (1/sqrt(2*PI())) * Exp(-1 * @_d1 * @_d1 / 2);
	set @_d2 = D2(@_d1, _s, _t);
	RETURN _S0 * Sqrt(_t) * Exp(-1*_q*_t) * @_dd1 * @_d1 * @_d2 / _s;
END //
DELIMITER ;