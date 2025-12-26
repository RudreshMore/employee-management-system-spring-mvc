package in.rudresh.service;

import java.util.List;

import in.rudresh.entity.Employee;

public interface EmployeeService {

	public void save(Employee employee);

	List<Employee> getAll();

	Employee getById(Integer empId);

	void delete(Integer empId);

}
