--Employee_Database_Challenge

--1)
SELECT emp_no,
		first_name,
		last_name
FROM employees

--2)
SELECT title,
		from_date,
		to_date
FROM titles

--3, 4, 5, 6, 7
SELECT e.emp_no,
		e.first_name,
		e.last_name,
		ti.title,
		ti.from_date,
		ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no ASC

--9)
SELECT emp_no, first_name, last_name, title
FROM retirement_titles

--10, 11, 12, 13, 14, 15)
SELECT DISTINCT ON (emp_no) emp_no, first_name,
last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

--17, 18, 19, 20, 21)
SELECT COUNT (title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

--Deliverable 2
--1)
SELECT emp_no, first_name, last_name, birth_date
FROM employees

--2)
SELECT from_date, to_date
FROM dept_emp

--3)
SELECT title
FROM titles

--Employee_Database_Challenge

--1)
SELECT emp_no,
		first_name,
		last_name
FROM employees

--2)
SELECT title,
		from_date,
		to_date
FROM titles

--3, 4, 5, 6, 7
SELECT e.emp_no,
		e.first_name,
		e.last_name,
		ti.title,
		ti.from_date,
		ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no ASC

--9)
SELECT emp_no, first_name, last_name, title
FROM retirement_titles

--10, 11, 12, 13, 14, 15)
SELECT DISTINCT ON (emp_no) emp_no, first_name,
last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

--17, 18, 19, 20, 21)
SELECT COUNT (title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

--Deliverable 2
--1)
SELECT emp_no, first_name, last_name, birth_date
FROM employees

--2)
SELECT from_date, to_date
FROM dept_emp

--3)
SELECT title
FROM titles

--Employee_Database_Challenge

--1)
SELECT emp_no,
		first_name,
		last_name
FROM employees

--2)
SELECT title,
		from_date,
		to_date
FROM titles

--3, 4, 5, 6, 7
SELECT e.emp_no,
		e.first_name,
		e.last_name,
		ti.title,
		ti.from_date,
		ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no ASC

--9)
SELECT emp_no, first_name, last_name, title
FROM retirement_titles

--10, 11, 12, 13, 14, 15)
SELECT DISTINCT ON (emp_no) emp_no, first_name,
last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

--17, 18, 19, 20, 21)
SELECT COUNT (title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

--Deliverable 2
--1)
SELECT emp_no, first_name, last_name, birth_date
FROM employees

--2)
SELECT from_date, to_date
FROM dept_emp

--3)
SELECT title
FROM titles

SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name, e.last_name, e.birth_date,
de.from_date, de.to_date, ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no, emp_no ASC;