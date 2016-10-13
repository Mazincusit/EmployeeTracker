package com.employee_tracker.service;

import com.employee_tracker.entity.Employee;

import java.util.List;

public interface EmployeeService {

    public List<Employee> getEmployees();

    public void saveEmployee(Employee employee);

    public Employee getEmployee(int id);

    public void deleteEmployee(int id);

}
