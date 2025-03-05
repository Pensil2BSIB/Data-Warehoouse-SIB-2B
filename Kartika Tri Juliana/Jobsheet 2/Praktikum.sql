SELECT *
FROM employees employe, employees manager, customers cust
WHERE employe.reportsTo = manager.employeeNumber
AND employe.employeeNumber = cust.salesRepEmployeeNumber;

SELECT manager.employeeNumber AS id_manager,
       CONCAT(manager.firstName, ' ', manager.lastName) AS Manager,
       employee.employeeNumber AS id_staff,
       CONCAT(employee.firstName, ' ', employee.lastName) AS staff
FROM employees employee, employees manager
WHERE employee.reportsTo = manager.employeeNumber
ORDER BY manager.firstName;

SELECT 
    manager.employeeNumber AS id_manager,
    CONCAT(manager.firstName, ' ', manager.lastName) AS Manager,
    manager.jobTitle AS Manager_Position,
    employee.employeeNumber AS id_staff,
    CONCAT(employee.firstName, ' ', employee.lastName) AS Staff,
    employee.jobTitle AS Staff_Position
FROM employees employee
LEFT JOIN employees manager ON employee.reportsTo = manager.employeeNumber
ORDER BY manager.employeeNumber, employee.employeeNumber;

//error
SELECT manager.employeeNumber as id_manager,
    concat(manager.firstName," ",manager.lastName) as Manager,
    employee.employeeNumber as id_staff, 
    concat(employee.firstName," ",employee.lastName) as staff,
    count(cust.customerNumber) as total_cust
FROM employees employee 
JOIN employees manager ON employee.reportsTo = manager.employeeNumber
LEFT JOIN customers cust ON employee.employeeNumber = cust.salesRepEmployeeNumber
GROUP BY employee.employeeNumber
ORDER BY manager.firstName;

//revisi
SELECT 
    manager.employeeNumber AS id_manager,
    CONCAT(manager.firstName, ' ', manager.lastName) AS Manager,
    employee.employeeNumber AS id_staff,
    CONCAT(employee.firstName, ' ', employee.lastName) AS staff,
    COUNT(cust.customerNumber) AS total_cust
FROM employees employee
JOIN employees manager ON employee.reportsTo = manager.employeeNumber
LEFT JOIN customers cust ON employee.employeeNumber = cust.salesRepEmployeeNumber
GROUP BY 
    manager.employeeNumber, 
    manager.firstName, 
    manager.lastName, 
    employee.employeeNumber, 
    employee.firstName, 
    employee.lastName
ORDER BY manager.firstName;

SELECT TOP 1 
    employee.employeeNumber AS staff_id,
    CONCAT(employee.firstName, ' ', employee.lastName) AS staff_name,
    COUNT(cust.customerNumber) AS total_customers
FROM employees employee
LEFT JOIN customers cust ON employee.employeeNumber = cust.salesRepEmployeeNumber
WHERE employee.employeeNumber NOT IN (SELECT DISTINCT reportsTo FROM employees WHERE reportsTo IS NOT NULL)
GROUP BY employee.employeeNumber, employee.firstName, employee.lastName
ORDER BY total_customers DESC;

--Ranking KPI
WITH EmployeeCustomers AS (
    -- Hitung jumlah customer yang langsung dimiliki oleh masing-masing pegawai
    SELECT 
        e.employeeNumber AS employee_id,
        CONCAT(e.firstName, ' ', e.lastName) AS employee_name,
        e.reportsTo AS manager_id,
        COUNT(c.customerNumber) AS direct_customers
    FROM employees e
    LEFT JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
    GROUP BY e.employeeNumber, e.firstName, e.lastName, e.reportsTo
),
RecursiveKPI AS (
    -- Rekursi untuk menjumlahkan customer bawahan ke atasan
    SELECT 
        employee_id,
        employee_name,
        manager_id,
        direct_customers AS total_customers
    FROM EmployeeCustomers
    UNION ALL
    SELECT 
        ec.employee_id,
        ec.employee_name,
        ec.manager_id,
        ec.direct_customers + rk.total_customers AS total_customers
    FROM EmployeeCustomers ec
    JOIN RecursiveKPI rk ON ec.employee_id = rk.manager_id
)
-- Ambil hasil ranking berdasarkan total customers
SELECT 
    employee_id,
    employee_name,
    SUM(total_customers) AS KPI_score
FROM RecursiveKPI
GROUP BY employee_id, employee_name
ORDER BY KPI_score DESC;

--ranking pegawai
SELECT 
    e.employeeNumber,
    CONCAT(e.firstName, ' ', e.lastName) AS employee_name,
    SUM(od.quantityOrdered * od.priceEach) AS total_sales
FROM employees e
JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
JOIN orders o ON c.customerNumber = o.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY e.employeeNumber, e.firstName, e.lastName
ORDER BY total_sales DESC;

SELECT COUNT(*) FROM employees;  
SELECT COUNT(*) FROM customers;  
SELECT COUNT(*) FROM orders;  
SELECT COUNT(*) FROM orderdetails;

SELECT customerNumber FROM customers WHERE customerNumber IN (124, 172, 424, 381, 148, 216, 382, 114, 353, 350, 103, 112);

SELECT customerNumber FROM customers;

SELECT DISTINCT customerNumber 
FROM orders
WHERE customerNumber NOT IN (SELECT customerNumber FROM customers);







