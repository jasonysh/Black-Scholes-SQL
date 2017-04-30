DELIMITER //
CREATE FUNCTION D2(_D1 double, _s double, _t double)
RETURNS double
BEGIN
    RETURN _D1 - _s * Sqrt(_t);
END //
DELIMITER ;

