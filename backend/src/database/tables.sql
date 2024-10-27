DROP TABLE IF EXISTS session_detail;
DROP TABLE IF EXISTS leave_detail;
DROP TABLE IF EXISTS branch_phone_number;
DROP TABLE IF EXISTS custom;
DROP TABLE IF EXISTS department_phone_number;
DROP TABLE IF EXISTS emergency_detail;
DROP TABLE IF EXISTS employee_phone_number;
DROP TABLE IF EXISTS leave_count;
DROP TABLE IF EXISTS supervise;
DROP TABLE IF EXISTS employment_detail;
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS branch;
DROP TABLE IF EXISTS leave_type;
DROP TABLE IF EXISTS employee;
DROP TRIGGER IF EXISTS leaveCount_column_trigger;
DROP TRIGGER IF EXISTS leave_trigger;

/*
CREATE TABLE employee(
	ID varchar(6) not null,
	first_name varchar(10),
	middle_name varchar(10),
	last_name varchar(10),
	date_of_birth date,
	gender ENUM('Male', 'Female','Neuter'),
	marital_status ENUM('Married','Unmarried'),
	road varchar(20),
	city varchar(20),
	country varchar(10),
	PRIMARY KEY (ID)
);
CREATE TABLE user (
	employee_ID varchar(6) not null,
	password varchar(10),
    access_level numeric(1) not null,
	PRIMARY KEY (employee_ID),
	FOREIGN KEY (employee_ID) REFERENCES employee(ID)  
);
CREATE TABLE supervise (
	emp_ID varchar(6),
    sup_ID varchar(6),
    PRIMARY KEY (emp_ID,sup_ID),
    FOREIGN KEY (emp_ID) REFERENCES employee(ID),
    FOREIGN KEY (sup_ID) REFERENCES employee(ID)
);
CREATE TABLE employee_phone_number (
	emp_ID varchar(6),
	phone_number varchar(12),
	PRIMARY KEY (emp_ID, phone_number),
    FOREIGN KEY (emp_ID) REFERENCES employee(ID)
);
CREATE TABLE leave_Type(
	pay_grade varchar(10),
	annual numeric(3),
	casual numeric(3),
	maternity numeric(3),
	noPay numeric(3),
	PRIMARY KEY (pay_grade)
);
CREATE TABLE branch (
	branch_ID varchar(6),
	name varchar(10),
	road varchar(20),
	city varchar(20),
	country varchar(10),
	PRIMARY KEY (branch_ID)
);
CREATE TABLE department (
	name varchar(10),
	building varchar(10),
    branch_ID varchar(6),
	PRIMARY KEY (name),
    FOREIGN KEY (branch_ID) REFERENCES branch(branch_ID) ON DELETE CASCADE  
);
CREATE TABLE employment_detail(
	emp_ID varchar(6),
	job_tittle varchar(10),
	pay_grade varchar(8),
	employeement_status ENUM('Intern', 'Contract', 'Permanent', 'Freelance'),
    working_time ENUM('Fulltime','Parttime') DEFAULT(null),
	department varchar(10),
    branch_ID varchar(6),
    supervisor bool,
	type ENUM('HRManager', 'Supervisor', 'General', 'Admin'),
	PRIMARY KEY (emp_ID),	
    FOREIGN KEY (emp_ID) REFERENCES employee(ID),
    FOREIGN KEY (department) REFERENCES department(name),
	FOREIGN KEY (pay_grade) REFERENCES leave_type(pay_grade),
	FOREIGN KEY (branch_ID) REFERENCES branch(branch_ID)
);
CREATE TABLE emergency_detail(
	emp_ID varchar(6),
	first_name varchar(10),
    last_name varchar(10),
	relationship varchar(8),
    phone_number varchar(12),
	PRIMARY KEY (emp_ID,phone_number),
	FOREIGN KEY (emp_ID) REFERENCES employee(ID)
);
CREATE TABLE leave_count (
	emp_ID varchar(6),
	annual_count numeric(3),
	casual_count numeric(3),
	maternity_count numeric(3),
	noPay_count numeric(3),
	PRIMARY KEY (emp_ID),
	FOREIGN KEY (emp_ID) REFERENCES employee(ID)
);
CREATE TABLE custom(
	emp_ID varchar(6),
    custom_field varchar(10),
    value varchar(10),
    PRIMARY KEY (emp_ID,custom_field),
    FOREIGN KEY (emp_ID) REFERENCES employee(ID)
);
CREATE TABLE branch_phone_number (
	branch_ID varchar(6),
	phone_number varchar(12),
	PRIMARY KEY (branch_ID, phone_number),
    FOREIGN KEY (branch_ID) REFERENCES branch(branch_ID)
);
CREATE TABLE department_phone_number (
	department varchar(10),
	phone_number varchar(12),
	PRIMARY KEY (department, phone_number),
    FOREIGN KEY (department) REFERENCES department(name)
);
# when one person apply two leaves on same day
CREATE TABLE leave_detail (   
	req_No INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    emp_ID VARCHAR(6),   
    reason VARCHAR(255),   
    leave_type VARCHAR(20),
    leave_date date,
    status VARCHAR(20),
    FOREIGN KEY (emp_ID) REFERENCES employee(ID)
);
CREATE TABLE session_detail (
	emp_ID VARCHAR(6),
	token varchar(300),
    last_update datetime,
    PRIMARY KEY(emp_ID),
    FOREIGN KEY (emp_ID) REFERENCES employee(ID)
);
*/

CREATE TABLE employee(
	ID varchar(6) not null unique,
	first_name varchar(10),
	middle_name varchar(10),
	last_name varchar(10),
	date_of_birth date,
	gender ENUM('Male', 'Female','Neuter'),
	marital_status ENUM('Married','Unmarried'),
	road varchar(20),
	city varchar(20),
	country varchar(10),
	PRIMARY KEY (ID)
);
CREATE TABLE user (
	employee_ID varchar(6) not null,
	password varchar(100),
    access_level numeric(1) not null,
	PRIMARY KEY (employee_ID),
	FOREIGN KEY (employee_ID) REFERENCES employee(ID) ON DELETE CASCADE  
);
CREATE TABLE supervise (
	emp_ID varchar(6),
    sup_ID varchar(6),
    PRIMARY KEY (emp_ID,sup_ID),
    FOREIGN KEY (emp_ID) REFERENCES employee(ID) ON DELETE CASCADE,
    FOREIGN KEY (sup_ID) REFERENCES employee(ID)
);
CREATE TABLE employee_phone_number (
	emp_ID varchar(6),
	phone_number varchar(12),
	PRIMARY KEY (emp_ID, phone_number),
    FOREIGN KEY (emp_ID) REFERENCES employee(ID)
);
CREATE TABLE leave_Type(
	pay_grade varchar(10),
	annual numeric(3),
	casual numeric(3),
	maternity numeric(3),
	noPay numeric(3),
	PRIMARY KEY (pay_grade)
);
CREATE TABLE branch (
	branch_ID varchar(6),
	name varchar(10),
	road varchar(20),
	city varchar(20),
	country varchar(10),
	PRIMARY KEY (branch_ID)
);
CREATE TABLE department (
	name varchar(10),
	building varchar(10),
    branch_ID varchar(6),
	PRIMARY KEY (name),
    FOREIGN KEY (branch_ID) REFERENCES branch(branch_ID) ON UPDATE CASCADE  
);
CREATE TABLE employment_detail(
	emp_ID varchar(6),
	job_title varchar(10),
	pay_grade varchar(8),
	employeement_status ENUM('Intern', 'Contract', 'Permanent', 'Freelance'),
    working_time ENUM('Fulltime','Parttime') DEFAULT(null),
	department varchar(10),
    branch_ID varchar(6),
    supervisor bool,
	type ENUM('HRManager', 'Supervisor', 'General', 'Admin'),
	PRIMARY KEY (emp_ID),	
    FOREIGN KEY (emp_ID) REFERENCES employee(ID),
    FOREIGN KEY (department) REFERENCES department(name) ON UPDATE CASCADE,
	FOREIGN KEY (pay_grade) REFERENCES leave_type(pay_grade),
	FOREIGN KEY (branch_ID) REFERENCES branch(branch_ID) ON UPDATE CASCADE
);
CREATE TABLE emergency_detail(
	emp_ID varchar(6),
	first_name varchar(10),
    last_name varchar(10),
	relationship varchar(8),
    phone_number varchar(12),
	PRIMARY KEY (emp_ID,phone_number),
	FOREIGN KEY (emp_ID) REFERENCES employee(ID) 
);
CREATE TABLE leave_count (
	emp_ID varchar(6),
	annual_count numeric(3),
	casual_count numeric(3),
	maternity_count numeric(3),
	noPay_count numeric(3),
	PRIMARY KEY (emp_ID),
	FOREIGN KEY (emp_ID) REFERENCES employee(ID)
);
CREATE TABLE custom(
	emp_ID varchar(6),
    custom_field varchar(30),
    value varchar(30),
    PRIMARY KEY (emp_ID,custom_field),
    FOREIGN KEY (emp_ID) REFERENCES employee(ID) ON DELETE CASCADE 
);
CREATE TABLE branch_phone_number (
	branch_ID varchar(6),
	phone_number varchar(12),
	PRIMARY KEY (branch_ID, phone_number),
    FOREIGN KEY (branch_ID) REFERENCES branch(branch_ID) ON UPDATE CASCADE
);
CREATE TABLE department_phone_number (
	department varchar(10),
	phone_number varchar(12),
	PRIMARY KEY (department, phone_number),
    FOREIGN KEY (department) REFERENCES department(name) ON UPDATE CASCADE
);
CREATE TABLE leave_detail (   
	req_No INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    emp_ID VARCHAR(6),   
    reason VARCHAR(255),   
    leave_type ENUM('annual', 'casual', 'maternity', 'noPay'),
    leave_date date,
    status VARCHAR(20),
    FOREIGN KEY (emp_ID) REFERENCES employee(ID)
);
CREATE TABLE session_detail (
	emp_ID VARCHAR(6),
	token varchar(300),
    last_update datetime,
    PRIMARY KEY(emp_ID),
    FOREIGN KEY (emp_ID) REFERENCES employee(ID)
);

CREATE OR REPLACE VIEW employee_view AS 
                        SELECT * FROM employee emp
                        INNER JOIN employment_detail emp_d 
                        ON emp.ID=emp_d.emp_ID;
				
CREATE OR REPLACE VIEW leave_initialize AS 
                        SELECT emp_ID,employment_detail.pay_grade,leave_type.annual,leave_type.casual,leave_type.maternity,leave_type.noPay
                        FROM employment_detail
                        Left Join leave_type
                        ON employment_detail.pay_grade=leave_type.pay_grade;
                        
CREATE OR REPLACE VIEW leave_view AS 
                        SELECT leave_d.req_No,
                            leave_d.emp_ID,
                            CONCAT(emp.first_name,' ',emp.middle_name,' ',emp.last_name) as full_name,
                            emp_d.department,
                            emp_d.job_title,
                            leave_d.leave_type,
                            leave_d.leave_date,
                            leave_d.reason,
                            leave_d.status,
                            leave_c.annual_count,leave_type.annual,
                            leave_c.casual_count,leave_type.casual,
                            leave_c.maternity_count,leave_type.maternity,
                            leave_c.noPay_count,leave_type.noPay
                        FROM leave_detail leave_d
                        Left JOIN employment_detail emp_d 
                        ON leave_d.emp_ID=emp_d.emp_ID
                        Left Join employee emp
                        ON leave_d.emp_ID=emp.ID
                        Left join leave_count leave_c
                        ON leave_d.emp_ID=leave_c.emp_ID
                        Left join leave_type
                        ON emp_d.pay_grade = leave_type.pay_grade;
                        
CREATE INDEX emp_details
ON employment_detail (emp_ID); 

CREATE INDEX emp
ON employee (ID); 

CREATE INDEX leave_c
ON leave_count (emp_ID); 

DELIMITER $$
CREATE TRIGGER leaveCount_column_trigger AFTER INSERT ON employment_detail
                FOR EACH ROW
                INSERT INTO leave_count (emp_ID, annual_count, casual_count, maternity_count, noPay_count)
                    VALUES (NEW.emp_ID, (SELECT annual FROM leave_initialize Where emp_ID=new.emp_ID), (SELECT casual FROM leave_initialize Where emp_ID=new.emp_ID), (SELECT maternity FROM leave_initialize Where emp_ID=new.emp_ID), (SELECT noPay FROM leave_initialize Where emp_ID=new.emp_ID));
DELIMITER ;

DELIMITER $$
CREATE TRIGGER leave_trigger AFTER UPDATE ON leave_detail
                FOR EACH ROW
                BEGIN
                IF NEW.leave_type='annual' THEN
                    UPDATE leave_count SET annual_count = leave_count.annual_count-1 WHERE leave_count.emp_ID=NEW.emp_ID;
                END IF;
                
                IF NEW.leave_type='casual' THEN
                    UPDATE leave_count SET casual_count = leave_count.casual_count-1 WHERE leave_count.emp_ID=NEW.emp_ID;
                END IF;
                
                IF NEW.leave_type='maternity' THEN
                    UPDATE leave_count SET maternity_count = leave_count.maternity_count-1 WHERE leave_count.emp_ID=NEW.emp_ID;
                END IF;
                
                IF NEW.leave_type='noPay' THEN
                    UPDATE leave_count SET noPay_count = leave_count.noPay_count-1 WHERE leave_count.emp_ID=NEW.emp_ID;
                END IF;
END $$
DELIMITER ;

DELIMITER //
CREATE PROCEDURE inEmployee( IN ivalue varchar(6))
BEGIN
	SELECT * FROM employee WHERE ID = ivalue;
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE inEmployment( IN ivalue varchar(6))
BEGIN
	SELECT * FROM employment_detail WHERE emp_ID = ivalue;
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE inUser( IN ivalue varchar(6))
BEGIN
	SELECT * FROM user WHERE employee_ID = ivalue;
END//
DELIMITER ;