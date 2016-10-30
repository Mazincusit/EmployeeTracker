package com.employee_tracker.dao;

import com.employee_tracker.entity.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Employee> getEmployees() {
		// get current hibernate session
		Session session = sessionFactory.getCurrentSession();

		// create a query
		Query<Employee> query =
				session.createQuery("from Employee", Employee.class);

		// get results
		List<Employee> employees = query.getResultList();

		// return results
		return employees;
	}

	@Override
	public void saveEmployee(Employee employee) {
		// get current hibernate session
		Session session = sessionFactory.getCurrentSession();

		// save employee
		session.saveOrUpdate(employee);
	}

	@Override
	public Employee getEmployee(int id) {
		// get current hibernate session
		Session session = sessionFactory.getCurrentSession();

		// retrieve employee from database
		Employee employee = session.get(Employee.class, id);

		// return result
		return employee;
	}

	@Override
	public void deteleEmployee(int id) {
		// get current hibernate session
		Session session = sessionFactory.getCurrentSession();

		// retrieve employee from database
		Employee employee = session.get(Employee.class, id);

		// delete employee
		session.delete(employee);
	}

}
