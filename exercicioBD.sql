CREATE TABLE employees(
    employeeId    number(6) NOT NULL,
    firstName     varchar2(20) NOT NULL,
    lastName      varchar2(25) NOT NULL,
    email         varchar2(25) NOT NULL,
    phoneNumber   varchar2(20) NOT NULL,
    hireDate      date NOT NULL,
    jobId         varchar2(10) NOT NULL,
    salary        number(8,2),
    commissionPct number(2,2),
    managerId     number(6),
    departmentId  number(4)
);
CREATE TABLE jobs(
    jobId       varchar2(10),
    JobTitle    varchar2(35),
    minSalary   number(6),
    maxSalary   number(6)
);
CREATE TABLE departments(
    departmentId    number(4),
    departmentName  varchar2(30),
    ManagerId       number(6),
    LocationId      number(4)
);      
ALTER TABLE departments ADD CONSTRAINT DeptIdPk     PRIMARY KEY (departmentId);
ALTER TABLE employees   ADD CONSTRAINT EmpEmpIdPk   PRIMARY KEY (employeeId);
ALTER TABLE jobs        ADD CONSTRAINT JobIdPk      PRIMARY KEY (jobId);
ALTER TABLE employees   ADD CONSTRAINT empDeptFk    foreign key (departmentId)  REFERENCES departments;
ALTER TABLE employees   ADD CONSTRAINT empJobFk     foreign key (jobId)         REFERENCES jobs;
ALTER TABLE departments ADD CONSTRAINT deptMgrFk      foreign key (managerId)     REFERENCES employees;
ALTER TABLE employees ADD CONSTRAINT empSalaryMin CHECK (salary>0);