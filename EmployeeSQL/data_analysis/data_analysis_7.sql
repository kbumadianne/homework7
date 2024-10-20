SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" AS e
JOIN "DeptEmployees" AS p
	ON p.emp_no = e.emp_no
JOIN "Departments" AS d
	on d.dept_no = p.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
