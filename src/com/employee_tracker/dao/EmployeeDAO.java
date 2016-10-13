package com.employee_tracker.dao;

import com.employee_tracker.entity.Employee;

import java.util.List;

public interface EmployeeDAO {

    public List<Employee> getEmployees();

    public void saveEmployee(Employee employee);

    public Employee getEmployee(int id);

    public void deteleEmployee(int id);

}
