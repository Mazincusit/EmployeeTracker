package com.employee_tracker.controller;

import com.employee_tracker.entity.Employee;
import com.employee_tracker.service.EmployeeService;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	private Logger logger = Logger.getLogger(getClass());

	@Value("${attribute.positions}")
	private String[] positions;

	@GetMapping("/list")
	public String listEmployees(Model model) {
		logger.info("listing employees");

		// get employees
		List<Employee> employees = employeeService.getEmployees();

		// add employees to model
		model.addAttribute("employees", employees);

		return "list-employees";
	}

	@GetMapping("/create")
	public String create(Model model) {
		logger.info("showing create form");

		// create new employee to bind form data
		Employee employee = new Employee();

		// add employee to model
		model.addAttribute("employee", employee);

		// add positions to model
		model.addAttribute("positions", positions);

		return "employee-form";
	}

	@PostMapping("/save")
	public ModelAndView save(@Valid @ModelAttribute("employee") Employee employee, BindingResult result) {
		if (result.hasErrors()) {
			logger.info("Ooops! You've got the errors");

			// create ModelAndView object
			ModelAndView modelAndView = new ModelAndView("employee-form");

			// add positions to ModelAndView object
			modelAndView.addObject("positions", positions);

			return modelAndView;
		}

		logger.info("saving employee: " + employee);
		employeeService.saveEmployee(employee);

		return new ModelAndView("redirect:/employee/list");
	}

	@GetMapping("/update")
	public String update(@RequestParam("employeeId") int id, Model model) {
		logger.info("showing update form");

		Employee employee = employeeService.getEmployee(id);

		// add employee to model
		model.addAttribute("employee", employee);

		// add positions to model
		model.addAttribute("positions", positions);

		return "employee-form";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("employeeId") int id) {
		logger.info("deleting employee with id: " + id);

		// delete employee
		employeeService.deleteEmployee(id);

		return "redirect:/employee/list";
	}

}
