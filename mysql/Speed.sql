DELIMITER //
CREATE FUNCTION Speed(_S0 double, _q double, _t double, _X double, _r double, _s double) 
RETURNS double
BEGIN
	set @_d1 = D1(_S0, _X, _t, _r, _q, _s);
	set @_dd1 = (1/sqrt(2*PI())) * Exp(-1 * @_d1 * @_d1 / 2);
	RETURN Exp(-1*_q*_t)*@_dd1/(_s*_s*_S0*_S0*_t) * (@_d1+_s*Sqrt(_t));
END //
DELIMITER ;