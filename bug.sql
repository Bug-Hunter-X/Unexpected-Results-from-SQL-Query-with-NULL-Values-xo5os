```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might return unexpected results if there are any NULL values in the 'salary' column.  The `>` operator treats NULL as neither greater than nor less than any other value, so rows with NULL salaries will be excluded even if they are in the 'Sales' department.