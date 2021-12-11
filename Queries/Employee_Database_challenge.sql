--creating retirement titles table
select e.emp_no, e.first_name, e.last_name,
	ti.title, ti.from_date, ti.to_date
into retirement_titles
from employees as e
join titles as ti
on e.emp_no = ti.emp_no
where e.birth_date between '1952-01-01' AND '1955-12-31'
order by e.emp_no



-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;



--creating retiring titles table
select count(title) as ct, title
into retiring_titles
from unique_titles
group by title
order by ct desc



--creating mentorship eligibility table
select distinct on(e.emp_no)
e.emp_no, e.first_name, e.last_name, e.birth_date,
de.from_date, de.to_date,
ti.title
into mentorship_eligibility
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join titles as ti
on e.emp_no = ti.emp_no
where de.to_date = '9999-01-01'
and e.birth_date between '1965-01-01' and '1965-12-31'
order by e.emp_no