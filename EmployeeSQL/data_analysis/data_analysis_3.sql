SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM "DeptManager" AS m
JOIN "Departments" AS d ON d.dept_no = m.dept_no
JOIN "Employees" AS e ON e.emp_no = m.emp_no;