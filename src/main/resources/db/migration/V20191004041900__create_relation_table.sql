CREATE TABLE ProjectsEmployeesRelation
(
    project_id        NUMBER(6)       NOT NULL,
    employee_id       NUMBER(6)       NOT NULL,

    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    UNIQUE (employee_id, project_id)
);

--COMMENT ON TABLE projects IS 'Relation table many-to-many. References with employees table and projects table.';
--COMMENT ON COLUMN project_id IS 'Primary key of projects table.';
--COMMENT ON COLUMN employee_id IS 'Primary key of employees table';