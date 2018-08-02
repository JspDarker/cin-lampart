-- cau 1
select e.first_name, e.last_name, d.id, d.name
from departments d
join employees e
on d.id = e.department_id;
-- cau 2
select concat(e.first_name," ", e.last_name) as name, d.id, d.name
from departments d
join employees e
on d.id = e.department_id;
-- cau 3
select d.location_id as location_id, l.street_address, l.city, l.state_province, c.name as country_name
from departments d
    join locations l
    on d.location_id = l.id
    join countries c
    on c.id = l.country_id
;
-- cau 4
select d.location_id as location_id, d.name as department_name, l.street_address, l.city, l.state_province, c.name as country_name
	from departments d
	join locations l
	on d.location_id = l.id
	join countries c
	on c.id = l.country_id
;

-- cau 5:
select concat(employees.first_name," ", employees.last_name) as name, jobs.title as `job title`, department_id as `department ID`, departments.name
from employees
	join jobs
	on employees.job_id = jobs.id
	join departments
	on employees.department_id = departments.id
	join locations
	on locations.id = departments.location_id
where locations.city = "London";

-- cau 6
select p.id as `employee id`, p.last_name as `name`, p.manager_id , em.last_name
from employees em
join (
select *
from employees
) p
on em.id = p.manager_id
;

-- cau 7:
select concat(first_name,' ',last_name) as `name`, hire_date as `hire date`
from employees
where id > (
	select id
	from employees
	where last_name = "Jones"
);

-- cau 8:
select departments.name, count(employees.id) as `number of employees`
from departments
join employees
on departments.id = employees.department_id
group by departments.id;

-- cau 9:
select
    job_history.employee_id as `employee ID`,
    jobs.title as `job title`,
    DATEDIFF(job_history.end_date, job_history.start_date) as `number of day`
from job_history
    join jobs
    on job_history.job_id = jobs.id
where department_id = 90;

-- cau 10:
select d.id as `department ID`, d.name, p.first_name as `first name`
from departments d
left join (
	select e.first_name as `first_name`, e.department_id as `department_id`
	from employees e
	group by department_id
) p
on d.id = p.department_id;

-- cau 11:
select d.name as `department name`, p.name as `name`, locations.city
from departments d
left join (
	select concat(e.first_name,' ',e.last_name) as `name`, e.department_id as `department_id`
	from employees e
	group by department_id
) p
on d.id = p.department_id
join locations
on d.location_id = locations.id;

-- cau12:
select jobs.title, avg(salary) as `average salary`, count(employees.id) as `person`
from jobs
join employees
on jobs.id = employees.job_id
group by jobs.id
;

-- cau13:
select concat(first_name,' ',last_name) as name,
    (employees.salary - thanh.salary) as diff_salary,
    employees.salary as safirst, thanh.salary
from employees
    left join (
        select min(salary) as salary, employees.job_id
        from employees
        group by job_id
    ) thanh
ON employees.job_id = thanh.job_id;

-- cau 14:
select
	departments.name as `department name`,
	concat(employees.first_name,' ',employees.last_name) as `employee name`,
	employees.hire_date as `hire date`, employees.salary as salary
from employees
	join departments
	on employees.department_id = departments.id
where employees.manager_id is not null
	and timestampdiff(YEAR,employees.hire_date,curdate()) > 15
;
-- cau15:
    select
    	concat(first_name,' ',last_name) as `employee name`, salary
    from employees
    where
    	salary > (
        SELECT salary FROM employees
    	where last_name = "Bull"
    	)
    ;
-- cau 16:
select
	concat(e.first_name,' ',e.last_name) as `employee name`
from employees e
	join departments d
	on e.department_id = d.id
where d.name like "IT%";
-- cau17:
select concat(e.first_name,' ',e.last_name) as `employee name` , ma.state_province
from employees e
join (
	select d.manager_id as manager_id, l.state_province as state_province
	from departments d
	join locations l
	on d.location_id = l.id
	where manager_id > 0 and l.country_id like "US%"
) ma
on e.manager_id = ma.manager_id;

--cau 19:
select concat(e.first_name,' ',e.last_name) as `employee name`, salary, ((jobs.min_salary + jobs.max_salary)/2) as `avg_cal`
from employees e
join jobs
on e.job_id = jobs.id
where e.salary > ((jobs.min_salary + jobs.max_salary)/2)
;
-- cau 20: note: jobs.* được thêm vào chỉ để so sánh trược quang
select e.job_id, concat(e.first_name,' ',e.last_name) as `employee name`, e.salary, jobs.*
from employees e
join jobs
on e.job_id = jobs.id
where e.salary = jobs.min_salary;


--cau21: note: jobs.* được thêm vào chỉ để so sánh trược quang
select e.job_id, concat(e.first_name,' ',e.last_name) as `employee name`, e.salary, jobs.*
from employees e
	join departments d
	on e.department_id = d.id
    join jobs
    on e.job_id = jobs.id
where d.name like "IT%" and e.salary > ((jobs.min_salary + jobs.max_salary)/2);

--cau22:
select concat(first_name,' ',last_name) as `employee name`, salary
from employees
where salary > (select salary from employees where last_name = "Bell")
;
