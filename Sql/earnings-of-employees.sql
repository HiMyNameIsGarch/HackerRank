SELECT MAX(salary * months), COUNT(salary * months) FROM employee WHERE salary * months IN (SELECT MAX(salary * months) FROM employee)
