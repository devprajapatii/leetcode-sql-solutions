CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
    SELECT SALARY
    FROM (
        SELECT SALARY,
        DENSE_RANK() OVER(ORDER BY SALARY DESC) AS RNK
        FROM EMPLOYEE
    ) T
    WHERE RNK = N
    LIMIT 1
  );
END
 
