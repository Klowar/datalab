-- Sum aggregate func
CREATE AGGREGATE agg_complex_summ (ComplexDig) (
    SFUNC = complex_sum,
    STYPE = ComplexDig,
    INITCOND = '(0,0)',
    PARALLEL = safe
);

-- Subtract aggregate
CREATE AGGREGATE agg_complex_sub (ComplexDig) (
    SFUNC = complex_subtract,
    STYPE = ComplexDig,
    INITCOND = '(0,0)',
    PARALLEL = safe
);

-- Multiply aggregate
CREATE AGGREGATE agg_complex_mult (ComplexDig) (
    SFUNC = complex_multiply,
    STYPE = ComplexDig,
    INITCOND = '(1,0)',
    PARALLEL = safe
);

-- Division aggregate
CREATE AGGREGATE agg_complex_div (ComplexDig) (
    SFUNC = complex_division,
    STYPE = ComplexDig,
    INITCOND = '(1,0)',
    PARALLEL = safe
);

