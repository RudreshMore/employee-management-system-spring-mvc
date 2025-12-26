package in.rudresh.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.rudresh.entity.Employee;
import in.rudresh.repo.EmployeeRepo;
import in.rudresh.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeRepo repo;

	@Override
	public void save(Employee employee) {
		repo.save(employee);
	}

	@Override
	public List<Employee> getAll() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public Employee getById(Integer empId) {
		// TODO Auto-generated method stub
		return repo.findById(empId).orElse(null);
	}

	@Override
	public void delete(Integer empId) {
		repo.deleteById(empId);

	}

}
