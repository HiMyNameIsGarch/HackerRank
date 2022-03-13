SELECT CASE
WHEN ((t.A+t.B)<=t.c) THEN 'Not A Triangle'
ELSE
    CASE
    WHEN (t.A=t.B) AND (t.B=t.c) THEN 'Equilateral'
    ELSE
        CASE
        WHEN (t.A = t.B) OR (t.A = t.C) OR (t.B = t.C) THEN 'Isosceles'
        ELSE
            'Scalene'
        END
    END
END
FROM triangles AS t;
