-- Sum function
CREATE OR REPLACE FUNCTION complex_sum (c1 ComplexDig, c2 ComplexDig)
    RETURNS ComplexDig
    LANGUAGE plpgsql
    AS $$
DECLARE
    result ComplexDig;
BEGIN
    result.real_part = c1.real_part + c2.real_part;
    result.image_part = c1.image_part + c2.image_part;
    RETURN result;
END;
$$;

--  Subtraction function
CREATE OR REPLACE FUNCTION complex_subtract (c1 ComplexDig, c2 ComplexDig)
    RETURNS ComplexDig
    LANGUAGE plpgsql
    AS $$
DECLARE
    result ComplexDig;
BEGIN
    result.real_part = c1.real_part - c2.real_part;
    result.image_part = c1.image_part - c2.image_part;
    RETURN result;
END;
$$;

-- Multiply function
CREATE OR REPLACE FUNCTION complex_multiply (c1 ComplexDig, c2 ComplexDig)
    RETURNS ComplexDig
    LANGUAGE plpgsql
    AS $$
DECLARE
    result ComplexDig;
BEGIN
    result.real_part = c1.real_part * c2.real_part - c1.image_part * c2.image_part;
    result.image_part = c1.real_part * c2.image_part + c2.real_part * c1.image_part;
    RETURN result;
END;
$$;

-- Division functions
CREATE OR REPLACE FUNCTION complex_divide_real (c1 ComplexDig, c2 double precision)
    RETURNS ComplexDig
    LANGUAGE plpgsql
    AS $$
DECLARE
    result ComplexDig;
BEGIN
    result.real_part = c1.real_part / c2;
    result.image_part = c1.image_part / c2;
    RETURN result;
END;
$$;

CREATE OR REPLACE FUNCTION complex_division (c1 ComplexDig, c2 ComplexDig)
    RETURNS ComplexDig
    LANGUAGE plpgsql
    AS $$
DECLARE
    numerator ComplexDig = complex_multiply (c1, c2);
    denominator ComplexDig = complex_multiply (c2, c2);
BEGIN
    RETURN complex_divide_real (numerator, denominator.real_part);
END;
$$;

