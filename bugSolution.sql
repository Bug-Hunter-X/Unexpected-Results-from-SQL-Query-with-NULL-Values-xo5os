```sql
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
```
This revised query uses the `OR salary IS NULL` condition to explicitly include rows with NULL salaries.  Alternatively, using `COALESCE` can replace NULL values with a default value:
```sql
SELECT * FROM employees WHERE department = 'Sales' AND COALESCE(salary, 0) > 100000;
```
This version replaces NULL salaries with 0, ensuring they're included in the comparison only if 0 is greater than 100000 (which is not true in this case, so they would be excluded).  The choice between these solutions depends on the desired behavior when encountering NULL salaries.