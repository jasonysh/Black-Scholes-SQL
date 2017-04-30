# Black-Scholes-SQL
Black Scholes Formulas written in MySQL. Those .sql are extracted from my private option trading project.


Option price:

    CallPrice (_S0 double, _q double, _t double, _X double, _r double, _s double) 

    PutPrice (_S0 double, _q double, _t double, _X double, _r double, _s double) 
    
    ImpliedVolatility(_CallPut int, _S0 double, _q double, _t double, _X double, _r double, _P double)

Greeks:

    Delta(_CallPut int, _S0 double, _q double, _t double, _X double, _r double, _s double) 

    Gamma(_S0 double, _q double, _t double, _X double, _r double, _s double) 

    Theta(_CallPut int, _S0 double, _q double, _t double, _X double, _r double, _s double) 

    Vega(_S0 double, _q double, _t double, _X double, _r double, _s double) 

    Rho(_CallPut int, _S0 double, _q double, _t double, _X double, _r double, _s double) 

Advanced Greeks:

    Volga(_S0 double, _q double, _t double, _X double, _r double, _s double) 

    Colour(_S0 double, _q double, _t double, _X double, _r double, _s double) 

    Charm(_CallPut int, _S0 double, _q double, _t double, _X double, _r double, _s double) 

    Speed(_S0 double, _q double, _t double, _X double, _r double, _s double) 
