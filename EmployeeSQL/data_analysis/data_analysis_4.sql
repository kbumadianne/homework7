SELECT p.dept_no,p. emp_no, e.first_name, e.last_name, d.dept_name
FROM "DeptEmployees" AS p
JOIN "Departments" AS d ON d.dept_no = p.dept_no
JOIN "Employees" AS e ON e.emp_no = p.emp_no;