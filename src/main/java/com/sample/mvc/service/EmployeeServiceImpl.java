package com.sample.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.mvc.dao.EmployeeDAO;
import com.sample.mvc.model.EmployeeCommand;

@Service
public class EmployeeServiceImpl  implements EmployeeService{

	
	public EmployeeServiceImpl() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Autowired
	private EmployeeDAO employeeDAO;
	
	@Transactional
	public void addEmployee(EmployeeCommand employee) {
		employeeDAO.addEmployee(employee);
	}

	@Transactional
	public void deleteEmployee(Integer employeeId) {
		employeeDAO.deleteEmployee(employeeId);
	}
	
	@Transactional
	public EmployeeCommand getEmployeebyId(Integer employeeId) {
		return employeeDAO.getEmployeebyId(employeeId);
	}

	@Transactional
    public List<EmployeeCommand> listContact() {
        return employeeDAO.listContact();
    }

	@Transactional
	public void updateEmployee(EmployeeCommand employeeCommand) {
		employeeDAO.updateEmployee(employeeCommand);
	}
	 

}
