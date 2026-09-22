-- query_1.sql
-- Objetivo: Distribuição de salários por Departamento e Cargo
-- Mantém funcionários mesmo sem departamento/cargo atribuído (LEFT JOIN)
SELECT
    e.EMPLOYEE_ID,
    e.FIRST_NAME || ' ' || e.LAST_NAME AS EMPLOYEE_NAME,
    d.DEPARTMENT_NAME,
    j.JOB_TITLE,
    e.SALARY
FROM HR.EMPLOYEES e
LEFT JOIN HR.DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
LEFT JOIN HR.JOBS j ON e.JOB_ID = j.JOB_ID
WHERE e.SALARY > 3000
ORDER BY d.DEPARTMENT_NAME, e.SALARY DESC;
