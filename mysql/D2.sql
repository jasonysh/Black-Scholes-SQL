delimiter //
create FUNCTION D2(_D1 double, _s double, _t double)
returns double
begin
    return _D1 - _s * Sqrt(_t);
end //
delimiter ;

