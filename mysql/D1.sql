delimiter //
create FUNCTION D1(_S0 double, _X double, _t double, _r double, _q double, _s double)
returns double
begin
    return (Ln(_S0/_X)+_t*(_r-_q+Power(_s,2)/2))/(_s*Sqrt(_t));
end //
delimiter ;