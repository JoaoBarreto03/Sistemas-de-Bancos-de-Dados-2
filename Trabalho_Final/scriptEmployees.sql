USE SBD2;


CREATE TABLE employees (
    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      CHAR(1)  		NOT NULL,    
    hire_date   DATE           NOT NULL
)ENGINE=columnstore;

CREATE TABLE departments (
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL
)ENGINE=columnstore;

CREATE TABLE dept_manager (
   emp_no       INT             NOT NULL,
   dept_no      CHAR(4)         NOT NULL,
   from_date    DATE            NOT NULL,
   to_date      DATE            NOT NULL
)ENGINE=columnstore;

CREATE TABLE dept_emp (
    emp_no      INT             NOT NULL,
    dept_no     CHAR(4)         NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL
)ENGINE=columnstore;

CREATE TABLE titles (
    emp_no      INT             NOT NULL,
    title       VARCHAR(50)     NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE
)ENGINE=columnstore;

CREATE TABLE salaries (
    emp_no      INT             NOT NULL,
    salary      INT             NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL
) ENGINE=columnstore;

-- Essa view calcula a data mais recente (MAX(from_date)) e a data de término (MAX(to_date)) para cada funcionário na tabela dept_emp.
-- O GROUP BY emp_no garante que as datas máximas são calculadas para cada funcionário individualmente.
-- Portanto, esta view representa a data mais recente em que cada funcionário começou em um departamento e a data mais recente em que 
-- saiu desse departamento.

CREATE OR REPLACE VIEW dept_emp_latest_date AS
    SELECT emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
    FROM dept_emp
    GROUP BY emp_no;
   
-- Esta view usa a view dept_emp_latest_date para obter as informações mais recentes sobre o departamento de cada funcionário.
-- A junção (INNER JOIN) entre dept_emp e dept_emp_latest_date é feita com base nas colunas emp_no, from_date, e to_date, 
-- garantindo que estamos obtendo as informações do departamento mais recentes para cada funcionário.
-- Os resultados incluem o número do funcionário (emp_no), o número do departamento (dept_no), a data de início mais recente
--  (from_date), e a data de término mais recente (to_date).
   
CREATE OR REPLACE VIEW current_dept_emp AS
    SELECT l.emp_no, dept_no, l.from_date, l.to_date
    FROM dept_emp d
        INNER JOIN dept_emp_latest_date l
        ON d.emp_no=l.emp_no AND d.from_date=l.from_date AND l.to_date = d.to_date;
      

-- Uma consulta que retorna o nome completo dos funcionários que já foram gerentes de algum departamento, 
-- juntamente com as datas em que começaram e terminaram como gerentes. Também incluiremos o nome do
-- departamento ao qual cada funcionário estava vinculado como gerente.
       
SELECT 
    e.first_name AS employee_first_name,
    e.last_name AS employee_last_name,
    dm.from_date AS manager_start_date,
    dm.to_date AS manager_end_date,
    d.dept_name AS department_name
FROM 
    employees e
JOIN 
    dept_manager dm ON e.emp_no = dm.emp_no
JOIN 
    departments d ON dm.dept_no = d.dept_no
ORDER BY 
    dm.from_date DESC;

   
-- Select padrao das tabelas
       
SELECT * FROM current_dept_emp;
SELECT * FROM dept_emp_latest_date;

SELECT * FROM employees 
WHERE hire_date > '2000/01/01';

SELECT * FROM departments;

SELECT * FROM dept_manager; 

SELECT * FROM dept_emp;

SELECT * FROM titles;

SELECT COUNT(emp_no) FROM salaries;



-- Codigo que ja estava no script original

SELECT 'LOADING departments' as 'INFO';
source load_departments.dump ;
SELECT 'LOADING employees' as 'INFO';
source load_employees.dump ;
SELECT 'LOADING dept_emp' as 'INFO';
source load_dept_emp.dump ;
SELECT 'LOADING dept_manager' as 'INFO';
source load_dept_manager.dump ;
SELECT 'LOADING titles' as 'INFO';
source load_titles.dump ;
SELECT 'LOADING salaries' as 'INFO';
source load_salaries1.dump ;
source load_salaries2.dump ;
source load_salaries3.dump ;

source show_elapsed.sql ;
