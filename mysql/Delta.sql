CREATE FUNCTION Delta(_CallPut int, _S0 double, _q double, _t double, _X double, _r double, _s double) 
RETURNS double
BEGIN
	set @_d1 = D1(_S0, _X, _t, _r, _q, _s);
	if _CallPut = 0 then
		RETURN Exp(-1*_q*_t) * CND(@_d1);
	else
		RETURN Exp(-1*_q*_t) * (CND(@_d1)-1);
	END if;
END //
DELIMITER ;