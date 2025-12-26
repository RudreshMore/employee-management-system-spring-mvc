package in.rudresh.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import in.rudresh.entity.Employee;

public interface EmployeeRepo extends JpaRepository<Employee, Integer>{

}
