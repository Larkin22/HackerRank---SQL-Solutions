/*Write a query identifying the type of each record in the TRIANGLES
table using its three side lengths. Output one of the following statements
for each record in the table:

- Not A Triangle: The given values of A, B, and C don't form a triangle.
  (A+C <= B) OR (C+B <= A) OR (A+B <= C)
- Equilateral: It's a triangle with 3 sides of equal length.
  (A=B AND B=C) <- All three sides are of equal length
- Isosceles: It's a triangle with 2 sides of equal length.
  (A=B) OR (B=C) OR (C=A) <- Two sides must be of equal length
- Scalene: It's a triangle with 3 sides of differing lengths.
  (A != B) AND (B! = C) <- All three sides must be of different lengths
*/

/*SELECT column(s),
  CASE col_to_case
	    *Conditions you want to apply that can be evaluated as True or False*
      WHEN condition THEN value
	    WHEN condition THEN value
      *Default value if none of the conditions are met*
      [ELSE value]
      *column with output*
  END AS colname
  FROM table*/

SELECT
CASE
    WHEN (A + B <= C) OR (B+C <= A) OR (A+C <= B) THEN "Not A Triangle"
    WHEN (A = B) AND (B = C) THEN "Equilateral"
    WHEN (A != B) AND (C != A) AND (B != C) THEN "Scalene"
    ELSE "Isosceles"
END
FROM TRIANGLES;
