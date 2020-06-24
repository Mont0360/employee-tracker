USE employeeTracker_db;

INSERT INTO department (name) VALUES ('Human Resources');
INSERT INTO department (name) VALUES ('Engineer');
INSERT INTO department (name) VALUES ('Legal');
INSERT INTO department (name) VALUES ('Sales');
INSERT INTO role (title, salary, department_id) VALUES ('Payroll Specialist', 75000, 0);
INSERT INTO role (title, salary, department_id) VALUES ('Software Engineer', 100000, 1);
INSERT INTO role (title, salary, department_id) VALUES ('Lawyer', 200000, 2);
INSERT INTO role (title, salary, department_id) VALUES ('Sales Lead', 120000, 3);
INSERT INTO employee (first_name, last_name, role_id) VALUES ('John', 'Doe', 0);
INSERT INTO employee (first_name, last_name, role_id) VALUES ('Sue', 'Jeffries', 1);
INSERT INTO employee (first_name, last_name, role_id) VALUES ('Ann', 'Lewis', 2);
INSERT INTO employee (first_name, last_name, role_id) VALUES ('Bill', 'Anderson', 3);